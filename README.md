# FraudAuditor – Health Insurance Fraud Detection System

A Python-based web application that uses Machine Learning to identify potentially fraudulent health insurance claims and provides visual analytics to support insurance auditing.

## About the Project

FraudAuditor is a Django-based web application developed to automate the analysis of health insurance claims. It provides separate portals for remote users and insurance auditors.

Users can submit their health insurance claim details for fraud prediction, while service providers can manage registered users, train machine learning models, analyze prediction results, view interactive charts, and export datasets.

## Key Features

- User registration and login
- Health insurance claim submission
- Machine Learning-based fraud classification
- Multiple classifier comparison
- Voting Classifier-based prediction
- Fraud and non-fraud analytics
- Interactive data visualization dashboards
- Registered user management
- Excel export of predicted claims

## Technology Stack

| Category | Technologies |
|---|---|
| Programming Language | Python 3.6.2 |
| Backend Framework | Django 1.11.5 |
| Database | MySQL 5.6 |
| Machine Learning | Scikit-learn |
| Data Processing | Pandas |
| Frontend | HTML5, CSS3, Bootstrap |
| Visualization | CanvasJS, JavaScript |
| Excel Export | xlwt |

## Machine Learning Algorithms

The project includes the following algorithms:

- Multi-Layer Perceptron (MLP)
- Multinomial Naive Bayes
- Linear Support Vector Classification
- Logistic Regression
- Gradient Boosting Classifier
- Voting Classifier

**Note:** The current implementation uses the `Fid` feature for model training and prediction. The other submitted claim and medical fields are stored in the database but are not currently used as model features.

## Project Architecture

The application follows Django's Model-View-Template (MVT) architecture.

- Remote_User – User registration, login, profile and claim submission.
- Service_Provider – Auditor dashboard, model training, analytics and exports.
- fraudauditor – Main Django project configuration and URL routing.
- Database – MySQL database schema.
- Template – HTML templates and frontend resources.

## Application Workflow

1. User registers and logs into the application.
2. User submits health insurance claim details.
3. The machine learning pipeline predicts the claim classification.
4. Prediction results are stored in MySQL.
5. Insurance auditors access claim records.
6. Auditors train and compare machine learning classifiers.
7. Interactive charts display fraud analytics.
8. Predicted datasets can be exported to Excel.

## Database

MySQL is used to store:

- Registered user details
- Health insurance claim information
- Fraud prediction results
- Model accuracy information
- Fraud detection ratios

## Future Enhancements

- Improve prediction using multiple claim and medical features.
- Implement secure password hashing and role-based authentication.
- Add model persistence to avoid retraining for every prediction.
- Develop actual provider-physician-claimant network analysis for collusive fraud detection.
- Introduce fraud risk scoring and advanced analytics.

## Project Purpose

This project demonstrates the integration of Python, Django, Machine Learning, MySQL and Data Visualization to develop a health insurance fraud detection application.

## Author

**Gaddam Srija**

B.Tech – Computer Science and Engineering (AI & ML)
