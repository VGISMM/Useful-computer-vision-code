#include "opencv2/highgui/highgui.hpp"
#include <iostream>
#include <stdio.h>
#include <fstream>
#include <opencv2/opencv.hpp>

using namespace std;
using namespace cv;
int frameNumber;
int frameIterator = 0;
int leftClickX, leftClickY, rightClickX, rightClickY;
int numberOfAnnotations = 0;
int localWidth = 0, localHeight = 0;
ofstream myfile;
string pngPath, annotationsPath;
Mat img, imgL, imgLOI, imgClone;
Mat myImageClone;
Mat zoomArea;
bool leftBeforeRight=false;
char annotationString[100];
char finalannotationString[200];
vector<string> annotationStringVector; 


void CallBackFunc(int event, int x, int y, int flags, void* userdata){
  Point pt = Point(x,y);
  int zoomAreaSize = 50;
  Point minPoint, maxPoint;
  minPoint.x = pt.x-(zoomAreaSize/2);
  minPoint.y = pt.y-(zoomAreaSize/2);
  maxPoint.x = pt.x+(zoomAreaSize/2);
  maxPoint.y = pt.y+(zoomAreaSize/2);
 
  if((minPoint.x > 0) && (minPoint.y > 0) && (maxPoint.x < 1280) && (maxPoint.y < 960))
  {
    myImageClone = imgLOI.clone();
    //std::cout << "Mouse X pos: " << finalPoint.x <<" Mouse Y pos: " << finalPoint.y<< std::endl;
    zoomArea = myImageClone(Rect(minPoint, Size(zoomAreaSize, zoomAreaSize)));
    Mat newimageTralal = zoomArea.clone();
    circle(myImageClone, pt,1, Scalar(0,255,255),1, 8,2);
    
    resize(zoomArea, zoomArea, Size(), 7, 7, CV_INTER_LINEAR);
    
    imshow("Zoom Area",zoomArea);
    moveWindow("Zoom Area",0,0);
  }

  if(event == EVENT_LBUTTONDOWN && (leftBeforeRight==false))
  {
    //cout << "Left button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;
    leftClickX=x;
    leftClickY=y;
    cout <<"Left Click"<<endl;
    leftBeforeRight=true;
 }
 else if((event == EVENT_RBUTTONDOWN) && (leftBeforeRight==true) )
 {
    //cout << "Right button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;
    rightClickX=x;
    rightClickY=y;
    localWidth = rightClickX - leftClickX;
    localHeight = rightClickY - leftClickY;
    cout << "Right Click" <<endl;
    leftBeforeRight=false;

    cv::rectangle(imgLOI,cv::Point(leftClickX, leftClickY),cv::Point(rightClickX, rightClickY), cv::Scalar(255, 0, 0),2,2);
    imshow("Annotation Window", imgLOI);
    printf("Press 's' - Save annotated area. Press 'i' - Ignore annotated area. \n");
    printf("Press 'f' - Write annotated areas to file, followed by 'd' to go to next frame. \n");

    char newKey = waitKey();

    if(newKey=='s') 
    {
      sprintf(annotationString,"%i\t%i\t%i\t%i",leftClickX,leftClickY,localWidth,localHeight);
      cv::rectangle(imgLOI,cv::Point(leftClickX, leftClickY),cv::Point(rightClickX, rightClickY), cv::Scalar(0, 255, 0),2,2);
      annotationStringVector.push_back(annotationString);
      numberOfAnnotations=numberOfAnnotations+1;
      cout << annotationString << endl;
      imshow("Annotation Window", imgLOI);
    }
    else if(newKey=='f') 
    {
      sprintf(annotationString,"%i\t%i\t%i\t%i",leftClickX,leftClickY,localWidth,localHeight);
      cv::rectangle(imgLOI,cv::Point(leftClickX, leftClickY),cv::Point(rightClickX, rightClickY), cv::Scalar(0, 255, 0),2,2);
      annotationStringVector.push_back(annotationString);
      numberOfAnnotations=numberOfAnnotations+1;
      for (unsigned n=0; n<annotationStringVector.size(); ++n) 
      {
        sprintf(finalannotationString+strlen(finalannotationString),"%s\t",annotationStringVector.at(n).c_str());
      }
      char auha[40];
      sprintf(auha,"%i\t%i\t",frameNumber,numberOfAnnotations);
      myfile << auha << finalannotationString << endl;
      cout << auha << finalannotationString << endl;
      
      annotationStringVector.clear();
      memset(finalannotationString, 0, sizeof(finalannotationString));
      numberOfAnnotations=0;
      cout << "Annotations for frame: " << frameNumber << " saved!" << endl;
      imshow("Annotation Window", imgLOI);
    }
    else if(newKey=='i') 
    { 
      cv::rectangle(imgLOI,cv::Point(leftClickX, leftClickY),cv::Point(rightClickX, rightClickY), cv::Scalar(0, 0, 0),2,2);
      annotationStringVector.clear();
      imshow("Annotation Window", imgLOI);
    } 
  }
  else if  ( event == EVENT_MBUTTONDOWN )
  {
    cout << "Middle button of the mouse is clicked - position (" << x << ", " << y << ")" << endl;
  }  
}

int main(int argc, char** argv)
{
  std::cout << "path to videooclip: " << argv[1] << std::endl;
  std::cout << "naming frames from: " << argv[2] << std::endl;
  VideoCapture capture(argv[1]);
  frameNumber = atoi(argv[2]);
  stringstream annotationFilename;
  annotationFilename << "../outputAnnotations/annotationsFrom" << frameNumber << ".txt";
  annotationsPath = annotationFilename.str();
  myfile.open(annotationsPath);
  char filename[100];
  char newFilename[100];
  namedWindow("Annotation Window",CV_WINDOW_AUTOSIZE | CV_GUI_NORMAL);
  
  while(1)
  { 
      capture >> img;
      //if fail to read the image
      if (img.empty()) 
      { 
        cout << "Error loading the image" << endl;
        return -1; 
      }
      if(frameIterator%1==0){
      imgL = img(Rect(1280,0,1280,960));
      imgLOI = imgL(Rect(Point(0,0), Size(1280, 960)));
      //resize(imgLOI,imgLOI,Size(1280, 460),INTER_LINEAR);
      //resize(imgLOI, imgLOI, Size(), 2, 2, CV_INTER_LINEAR);
      imgClone = imgLOI.clone();

      //show the image
      imshow("Annotation Window", imgLOI);
      setMouseCallback("Annotation Window", CallBackFunc, NULL);
      
      // Wait until user press some key
      char k = waitKey();
      if(k=='q') { // Quit the program
        cout << "Quitting annotation frame: " << frameNumber-1 << endl;
        break;
      }
      /*if(k=='r') { // Restart annotation of frame
        cout << "Restart annotation of frame does not work" << frameNumber << endl;
        //capture.set(CV_CAP_PROP_POS_AVI_RATIO,frameIterator-1);
      }*/
      if(k=='d') { // done annotating frame
        // Creating filename
        stringstream pngfilename;
        pngfilename << "../outputAnnotations/" << frameNumber << ".png";
        pngPath = pngfilename.str();
        imwrite(pngPath,imgClone);
        cout << "Frame: " << frameNumber << "saved!" << endl;
        frameNumber++;
        cout << "Next frame will be frame: " << frameNumber << endl;
        
      }
    }
    frameIterator++;
    cout << "frameIterator: " << frameIterator << endl;
  }
myfile.close();
return 0;
}
