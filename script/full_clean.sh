#!/bin/bash

flutter clean; cd ios; flutter pubget get; pod deintegrate; pod install; cd ..; flutter pub get;

cd module;
cd gen; flutter clean;flutter pubget get; rm pubspec.lock; flutter pub get; cd..;
cd widgets; flutter clean;flutter pubget get; rm pubspec.lock; flutter pub get; cd..;
cd common; flutter clean;flutter pubget get; rm pubspec.lock; flutter pub get; cd..;
cd core; flutter clean;flutter pubget get; rm pubspec.lock; flutter pub get; cd..;
cd..;
flutter pub get;

