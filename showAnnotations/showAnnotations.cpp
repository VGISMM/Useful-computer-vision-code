#include "opencv2/highgui/highgui.hpp"
#include "opencv2/calib3d/calib3d.hpp"
#include "opencv2/imgproc/imgproc.hpp"
#include "opencv2/contrib/contrib.hpp"

#include <stdio.h>
#include <time.h>
#include <sstream>
#include <iostream>
#include <fstream>
#include <string>
#include <algorithm>


using namespace std;
using namespace cv;

int frameNumber;
int stepThorugh=1;
Mat combinedOutput;

vector<string> &split(const string &s, char delim, vector<string> &elems) {
    stringstream ss(s);
    string item;
    while (std::getline(ss, item, delim)) {
        elems.push_back(item);
    }
    return elems;
}

vector<string> split(const string &s, char delim) {
    vector<string> elems;
    split(s, delim, elems);
    return elems;
}


int main(int argc, char** argv)
{
  char filename[200];
  char tempfilename[200];
  char annoFilename[200];
  char inputDirString[200];
  std::cout << "annotation directory: " << argv[1] << std::endl;
  std::cout << "annotates from frame: " << argv[2] << std::endl;
  sprintf (annoFilename, "%s/annotations.txt",argv[1]);
  ifstream file(annoFilename);
  frameNumber = atoi(argv[2]);
  
  int outputframenumber=0;

  string str;
  string delimframeNumber = "\t";
  vector<string> annotedImagesArray; 
  vector<string> totalAnnotedImagesArray;
  int auha=1;

  while (std::getline(file, str)) 
   {
    totalAnnotedImagesArray.push_back(str);
    size_t pos = 0;
    string token;
    while (((pos = str.find(delimframeNumber)) != std::string::npos)&& (auha<=1)) {
        token = str.substr(0, pos);
        annotedImagesArray.push_back(token);
        str.erase(0, pos + delimframeNumber.length());
        auha=auha+1;
    }
    auha=1;
   }
  int value;
  /* Main loop */
  while(1)
  { 
    sprintf (filename, "%s/%i.png", argv[1],frameNumber);

    Mat img = imread(filename);
    Mat imgClone=img.clone();

    /* If fail to read the image */
    if ( img.empty() ) 
    { 
      cout << "Error loading the image" << endl;
      return -1; 
    }

    for (unsigned n=0; n<annotedImagesArray.size(); ++n) {
      value = atoi(annotedImagesArray.at( n ).c_str());

      if (frameNumber==value)
      {
        std::vector<std::string> x = split(totalAnnotedImagesArray.at( n ), '\t');
        int amountAnnotedObjects= atoi(x.at( 1 ).c_str());

        int frameNumberAa = 1;
        int localX1 = 2;
        int localX2 = 3;
        int localX3 = 4;
        int localX4 = 5;

        /* Draw corresponding rectangles from the txt file*/
        while (frameNumberAa<=amountAnnotedObjects){ 
          int pointUno = atoi(x.at( localX1 ).c_str());
          int pointDos = atoi(x.at( localX2 ).c_str());
          int pointTres = atoi(x.at( localX3 ).c_str());
          int pointQuattro =  atoi(x.at( localX4 ).c_str());

          pointTres = pointTres + pointUno;
          pointQuattro = pointQuattro + pointDos;

          cv::rectangle(imgClone,cv::Point(pointUno, pointDos) ,cv::Point(pointTres,pointQuattro), cv::Scalar(255, 255, 255),2,2);
          Mat temp;
          temp = img(cv::Rect(cv::Point(pointUno+4, pointDos+4), cv::Point(pointTres-4,pointQuattro-4)));
          cv::resize(temp,temp,cv::Size(20,20),CV_INTER_NEAREST);
          sprintf (tempfilename, "../out/%i.png",outputframenumber);
          outputframenumber++;
          imwrite(tempfilename,temp);
          localX1 = localX1 + 4;
          localX2 = localX2 + 4;
          localX3 = localX3 + 4;
          localX4 = localX4 + 4;

          frameNumberAa  = frameNumberAa  + 1;
        }
      }
    } 

    stringstream frameNumberStream;
    frameNumberStream << frameNumber;
    string frameNumberString = frameNumberStream.str();
    putText(imgClone, frameNumberString, cv::Point(40,40), CV_FONT_HERSHEY_PLAIN, 2, Scalar::all(255), 3,3);
    imshow("Annotated Image",imgClone);
    std::cout << "Frame number: " << frameNumber << std::endl;

    if (stepThorugh==1){
      waitKey();
    }
    
    /* Wait until user press some key */
    char k = waitKey(200);
    if(k=='q') { /* Quit the program */
      break;
    }
    if(k=='r') { /* Pause on space */
      if(stepThorugh==1){
        stepThorugh=0;
      }
      else{
        stepThorugh=1;
      }
    }
    frameNumber++;  
  }
  file.close();
  return 0;
}
