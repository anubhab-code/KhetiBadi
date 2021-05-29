# KhetiBadi - One Stop for Indian farmers
This is the official code repository for _Team Version 1.0_ . This _simple, light weight mobile application built in Flutter_ was developed during HackOn 2.0 2021.

## _Team DeepFlow_
* _Anindyadeep Sannigrahi_
* _Swayam Shubham Giri_
* _Anubhab Swain_
* _Priyansu Rath_

## Important Links
* [Demo video link]()

* [Presentation of our idea](https://www.canva.com/design/DAEc-iIbk3M/EjElmnlAv8bNd4NW4ppSAQ/view?utm_content=DAEc-iIbk3M&utm_campaign=designshare&utm_medium=link&utm_source=sharebutton)

* [Kaggle Dataset Used for Plant disease detection](https://www.kaggle.com/vipoooool/new-plant-diseases-dataset)

## Overview :
A Flutter App , with a blend of Machine Learning and IoT in it and intergrated with a whole lot of features which aims to help farmers in agricultural applications and thus making their lives a bit easy. 

## Key Features :
1. Secured Authentication (via OTP)
2. Multilingual for efficient use 
3. Rent tools / farming essentials
4. Plant disease detection
5. Crop prediction using IoT model
6. Smart connect to prevent third party person take advantage 
7. Weather Prediction
8. Feed displaying agriculture related news snippets
9. Toll free number/expert assistance

## The Problem Statement :
1. Inability of small and poor farmers to buy expensive tools for their fields because they prove to be budget busters.
2. Shortcoming of The Farmer (Empowerment and Protection) Agreement of Price Assurance and Farm Services Bill, 2020. Farmers in contract farming arrangements will be the weaker players in terms of their ability to negotiate what they need.
3. Plant diseases are a significant yield and quality constraint for farmers, which also cause huge loss economically.
4. Lack of knowledge among small farmers regarding maximizing crop yield and crop rotation techniques.

## Our Solution : 
1. Our app provides the platform to rent tools instead of buying them. The farmer is at the winning end of the game since he would only pay for the machine when he’s in need of it and also get access to up-to-date technology which is more efficient, rapid and competent.
2. Khetibadi App empowers the farmers by our Smart Connect feature, which enables the farmer to list his harvest at an platform where the base price would be the MSP as fixed by the government. The farmers can post their produce and the prices on our platform. All the buyers interested can contact the farmer directly using the contact feature, thus ensuring profitability to the farmer and ending market monopoly by large corporations. 
3. Using Convolutional Neural Network, disease detection is carried out at an early stage and scientific preventive measures are suggested accordingly. Supervised Machine Learning, Multiple Linear Regression, K-Nearest Neighbor Regression algorithms are used in model construction.
4. Crop yield is predicted using our Convolutional Neural Network, which requires simple parameters such as  soil pH, rainfall, air humidity, air temperature and soil humidity of the land through a completely functional ioT model feeding these information to a feed, to be cultivated and predicts the suitable crops accordingly and suggests crop rotation patterns, ensuring maximum productivity of the cultivable land while also ensuring sustainable growth and reducing crop specific disease and pest problems.

## Technologies used :
- [x] Flutter
- [x] Tensorflow
- [x] Weather API
- [x] Firebase
- [x] Firestore
- [x] Cloud Messaging
- [x] Firebase Authentication
- [x] Rest APIs
- [x] Google Teachable Machine
- [x] Pandas
- [x] Numpy
- [x] Real-time Database
- [x] Arduino

## Usage
* _In order to run the application on your local device make sure to have flutter environment setup on your local device_

* _Clone the repo and open it in any text editor - VS Code for example_

* _Connect your mobile in USB Debug mode_

* _Write in terminal "flutter run"_

## Tracks used
_Agriculture_ :-  Since farmers are facing a lot of issues and there is protest going on which has worsened the situation so we decided to come up with a smart solution to the problem by including features like Rent tools and Smart connect to the Mandi which will surely propel the growth of farmers.

## Future Roadmap
1. For the Feed feature, due to time constraints the Agro News API (https://newsapi.org/v2/q=agriculture?country=in&apiKey=API_KEY) couldn't be implemented, which will be one of our future features of the app, for the time being hard coded values are being displayed in the feed.
2. UI improvements to be done, to provide a better interface for the users to interact with the app.
3. Personal chatbot to be included to provide as much as assistance possible, later connecting them to professionals for further help.
