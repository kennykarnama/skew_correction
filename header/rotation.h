#ifndef ROTATION_H
#define ROTATION_H

#include <iostream>
#include <cmath>
#include <string>
#include <opencv2/opencv.hpp>
#include <boost/lexical_cast.hpp>

	class Rotation
	{
	public:
		Rotation();
		~Rotation();

		void rotate2D(const cv::Mat & src, cv::Mat & dst, const double degrees);
	};
#endif