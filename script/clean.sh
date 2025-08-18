#!/bin/bash

flutter clean; flutter pubget get; cd ios; pod deintegrate; pod install; cd ..; flutter pub get;
