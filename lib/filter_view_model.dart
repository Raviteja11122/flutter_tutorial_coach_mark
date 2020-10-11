import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class FilterViewModel extends BaseViewModel{

  List<String> _serviceFilters = ["Hair Style", "Makeup", "Hair Coloring", "Spa", "Facial Makeup", "Trim & shaving"];
  List<String> _sortByFilters = ["Most Popular", "Cost Low to High", "Cost High to Low"];

  int _serviceFilterIndex;
  int _sortByFilterIndex;
  int _priceFilterIndex;
  double _rating;
  int _gender;
  RangeValues _distance = RangeValues(0, 5);

  List<String> get serviceFilters => _serviceFilters;
  List<String> get sortByFilters => _sortByFilters;
  int get serviceFilterIndex => _serviceFilterIndex;
  int get sortByFilterIndex => _sortByFilterIndex;
  int get priceFilterIndex => _priceFilterIndex;
  double get rating => _rating;
  int get gender => _gender;
  RangeValues get distance => _distance;

  onServiceFilterSelected(bool isSelected, int index) {
    if(isSelected)
      _serviceFilterIndex = index;
    else
      _serviceFilterIndex = null;
    notifyListeners();
  }

  void onRatingChanged(double rating) {
    _rating = rating;
    notifyListeners();
  }

  onGenderChanged(int val){
    _gender = val;
    notifyListeners();
  }

  onDistanceChanged(RangeValues rangeValues){
    _distance = rangeValues;
    notifyListeners();
  }

  onSortByChanged(int index) {
    _sortByFilterIndex = index;
    notifyListeners();
  }

  onPriceFilterSelected(bool isSelected, int index) {
    if(isSelected)
      _priceFilterIndex = index;
    else
      _priceFilterIndex = null;
    notifyListeners();
  }

}