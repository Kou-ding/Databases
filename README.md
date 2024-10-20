# Databases

Notes to aid in understanding the vast subject of Databases. Databases course 2024.

### Project

το σχήμα σας θα πρέπει να αποτελείται από τουλάχιστον 10 σχέσεις

Ο χρόνος παρουσίασης κάθε ομάδας θα είναι 2-3 λεπτά, οπότε προτείνεται να υποβάλετε παρουσίαση με 
τη μορφή αρχείου pptx με λίγες διαφάνειες (υπολογίστε 2-3) και να επικεντρωθείτε στα παρακάτω:

1) Θα πρέπει να έχετε μια διαφάνεια τίτλου που να περιέχει το θέμα της εργασίας σας και τα ονόματά σας.

2) Θα πρέπει να εξηγήσετε συνοπτικά την ανάγκη/τον λόγο ύπαρξης της ΒΔ που προτίθεστε να 
σχεδιάσετε και να υλοποιήσετε.

3) Θα πρέπει (πολύ συνοπτικά) να μας πείτε ποιες αναμένεται να είναι οι βασικές οντότητες 
(πίνακες) του συστήματος ΒΔ σας.

Title: 
An open source approach to parking

Reasoning:
With many working citizens using their car to commute to their work, and not only, optimizing the 
process of parking will save them time and improve their quality of life.

The way the application works is simple. The user pushes a button on their phone each time they park 
or unpark their phone. 

In the second case the application sends a message to the database containing the exact location of 
the user and adds a "vacant spot" marking on that area of the map.

In the first case the application sends an anonymous signal to the database containing the location 
of the user and checking if it matches with any previous vacant parking spots denoted by the other 
users previously. If it does then the app marks the spot as taken. 

Entities:
- User
    - username
    - location
    - sendLocation()
    - fetchParking()
    - refreshMap()
- Parking Spot
    - isTaken
    - location
    - timeSinceMarkedEmpty
- District (to be able to load specific areas in batches an avoid loading the whole map)
    - activeCommunityScore (to evaluate if you are going to get feedback in that area)
- 


