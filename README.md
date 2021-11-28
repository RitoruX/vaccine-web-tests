# Vaccine Web Tests

## Installation

```
pip install -r requirements.txt
```

## Running tests

```
robot test_reservation.robot
```

## Test case list
| ID | Name | Description | Status |
|----|------|-------------|--------|
| 1  | Test Nevigate the Homepage | Visit the home page and verify 2 items on the home page.| Pass |
| 2  | Test Create Reservation    | Visit the home page, then click on (make a reservation button), and create a reservation.  Verify that the registration was created.| Pass |
| 3  | Test cancel the reservation | Cancel the reservation that made in the previous test.| Pass |

## Questions

### Which do you think is a better framework for E2E testing of web applications or web services: Robot Framework or Cucumber with Selenium/HTTP library and Junit?     
I think Robot Framework is better. Because, It has easy-to-use tabular test data syntax and it utilizes the keyword-driven testing approach. 

### What tutorial or online resource(s) did you find most helpful for learning Robot Framework?
- https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html
- https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html