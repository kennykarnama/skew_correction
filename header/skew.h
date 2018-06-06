#ifndef SKEW_H
#define SKEW_H

#include <opencv2/opencv.hpp>
#include <vector>
#include <string>
#include <cmath>
#include <map>
#include <iterator>
#include <algorithm>
#include <limits>
#include "projection.h"

class Skew
{
public:
	Skew();
	~Skew();
	
	std::vector<double> entropy(std::vector<double>);

	
	std::vector<double> Eh(std::vector<double>);

	double E(std::vector<double>);

	double angle(cv::Mat,  double, double, double);

	cv::Mat correct_skew(cv::Mat, double);

	
};

#endif

