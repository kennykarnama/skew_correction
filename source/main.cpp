#include "ccl.h"
#include "projection.h"
#include "skew.h"
#include "rotation.h"

void displayImage(std::string namaWindow, int jenisWindow, cv::Mat gambarnya);

int main(int argc, char const *argv[])
{
	/* code */

	cv::Mat word_img = cv::imread(argv[1],CV_LOAD_IMAGE_ANYDEPTH);

	std::string nama_file(argv[2]);

	CCL ccl;

	cv::Mat word_img_cc = ccl.connectedComponentLabelling(word_img);

	std::vector<ushort>labels = ccl.getComponentLabels(word_img_cc);

	std::map<ushort,std::vector<cv::Point> > cc_points = ccl.getComponentPoints(labels,word_img_cc);

	std::vector<cv::RotatedRect> rotated_rects = ccl.getRotatedRect(cc_points);

	std::vector<cv::Rect> rects =  ccl.getRect(rotated_rects);


	cv::Mat visualisasi_bb_citra =  ccl.visualizeRect(rects, word_img);

	cv::Mat hasil_filter = ccl.filter(cc_points,0.002, word_img);

	Projection projection;


	Skew skew;

	double angle1 = skew.angle(hasil_filter,(double)-10.0,(double)10.0,(double)1.0);

	//std::cout << angle1 << std::endl;

	double mulai = (angle1*1.0) - (double)(1.0);

	double akhir = (angle1*1.0) + (double)(1.1);

	double angle2 = skew.angle(hasil_filter,mulai,akhir,0.1);

	//std::cout << "Optimal Angle " << angle2 << std::endl;


	cv::bitwise_not(hasil_filter,hasil_filter);

	//cv::Mat correct_skew = skew.correct_skew(hasil_filter,angle2);

	Rotation rotation;

	cv::Mat correct_skew;

	rotation.rotate2D(hasil_filter,correct_skew,angle2);

	cv::bitwise_not(correct_skew,correct_skew);

	//displayImage("word_img",CV_WINDOW_KEEPRATIO,correct_skew);

	bool status_tulis = cv::imwrite(nama_file+".png",correct_skew);

	std::string output = "";

	if(status_tulis){
		output = nama_file+".png"+";"+std::to_string(angle2);
	}
	else{
		output = "error";
	}

	std::cout << output << std::endl;

	
	
	return 0;
}

void displayImage(std::string namaWindow, int jenisWindow, cv::Mat gambarnya){
	
	cv::namedWindow(namaWindow,jenisWindow);

	cv::imshow(namaWindow,gambarnya);

	cv::waitKey(0);

}