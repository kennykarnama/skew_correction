#include "skew.h"

Skew::Skew(){

}

Skew::~Skew(){

}


std::vector<double> Skew::entropy(std::vector<double> normalized_vertical_projection){

	std::vector<double> all_element_entropies;
	
	for (int i = 0; i < normalized_vertical_projection.size(); ++i)
	{
		/* code */
		double entropy = (-1.0*normalized_vertical_projection.at(i))*log10(normalized_vertical_projection.at(i));

		all_element_entropies.push_back(entropy);
	}

	return all_element_entropies;
	

}

std::vector<double> Skew::Eh(std::vector<double> entropies){
	
	std::vector<double> e(entropies.size());

	for (int i = 0; i < entropies.size(); ++i)
	{
		/* code */
		int m = entropies.size()-1;

		double sum = 0.0;

		for (int start = i; start <= m; ++start)
		{
			/* code */
			sum+=entropies.at(start)*1.0;
		}

		e[i] = sum;
	}


	return e;
}

double Skew::E(std::vector<double> E){
	double sum = 0.0;

	for (int i = 0; i < E.size(); ++i)
	{
		/* code */
		sum+=E.at(i)*1.0;
	}


	return (sum*1.0)/(E.size());
}

double Skew::angle(cv::Mat hasil_filter, double start, double end,double step){

	Projection projection;

	std::map<double,double> angles;

	for (double i = start; i <= end; i+=step*1.0)
		{
		/* code */
			cv::Mat source = hasil_filter.clone();

			cv::Point2f src_center(source.cols/2.0F, source.rows/2.0F);
			cv::Mat rot_mat = cv::getRotationMatrix2D(src_center, i*1.0, 1.0);
			cv::Mat dst;
			cv::warpAffine(source, dst, rot_mat, source.size(),cv::INTER_CUBIC);

			std::vector<int> proyeksi =  projection.projectVertical(dst);

			std::vector<double> normalized =  projection.normalizeProjection(proyeksi);

			std::vector<double> entropies =  entropy(normalized);

			std::vector<double> EH =  Eh(entropies);

			
			
			double E_func = E(EH);

			angles.insert(std::pair<double,double>(i,E_func));

		
	}

	std::map<double,double>::iterator it;

	double minimum = std::numeric_limits<double>::max();

	double indeks = -1;

	//std::cout <<"MEONG == MEONG" <<std::endl; 

	for (it = angles.begin(); it!=angles.end(); ++it)
	{
		/* code */
		//std::cout << it->first << " " << it->second << std::endl;
		if(minimum > it->second){
			indeks = it->first;
			minimum = it->second;
		}
	}

	//std::cout <<"MEONG == MEONG" <<std::endl; 

	if(indeks!=-1){
		return indeks;
	}

	else{
		return 0.0;
	
	}


}

cv::Mat Skew::correct_skew(cv::Mat hasil_filter, double theta){

			cv::Mat source = hasil_filter.clone();

			cv::Point2f src_center(source.cols/2.0F, source.rows/2.0F);
			cv::Mat rot_mat = cv::getRotationMatrix2D(src_center, theta*1.0, 1.0);
			cv::Mat dst;
			cv::warpAffine(source, dst, rot_mat, source.size(),cv::INTER_CUBIC);

			return dst;
}



