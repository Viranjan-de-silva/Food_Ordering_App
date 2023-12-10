# Food_Ordering_App
Welcome to the Food Ordering Application repository! This project aims to provide a user-friendly platform for ordering food online.

## Introduction
The automated food delivery system was developed by me and one of my colleagues as a class project. A simple line-following robot was designed, and it is utilized for the distribution of meal orders. Below, an explanation is provided for the mobile application that was developed for that project by me.

## Flow of application
Firstly, upon entering, a table is selected by the customer. Subsequently, a tablet is positioned in the corner of the shop, where the order is to be placed. The selection of a table number is necessary; it must be initiated by the customer, followed by pressing the "select table" option. Moving forward without choosing a table number is not possible for the customer.


![page1](https://github.com/Viranjan-de-silva/Food_Ordering_App/assets/118048181/70a5688a-b16d-4744-9d3e-a8783cd41ed5)

Then, the number of items for each food item can be selected by the customer, followed by pressing the "place order" button. The app is currently designed for two food items, but it can be increased as per requirements. Subsequently, a message indicating that the order has been placed will appear, and the customer is required to wait until the order is served.

![page2](https://github.com/Viranjan-de-silva/Food_Ordering_App/assets/118048181/5e12f184-3238-4642-911e-37624a4c903a)

## Functioning system

The customer's order is transmitted to the local server as an integer. For example, if the sent integer is 532, the first digit '5' represents the customer's table number, the second digit '3' signifies the quantity of food item one, and the last (third) digit '2' denotes the quantity of food item two. This integer is then parsed in the main program, and the vending machine operates accordingly.
