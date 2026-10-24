# WorkLink
### Connecting Local Skills with Local Needs

**A Hyperlocal Skilled Worker Discovery and Service Booking Platform**

Developed by **Team VISION_X_DRAVID**

---

## 1. Project Overview

WorkLink is a Flutter-based hyperlocal service platform designed to connect customers with nearby skilled workers through a simple and accessible digital application.

The platform focuses on everyday service requirements, including electrical repairs, plumbing, carpentry, cleaning, painting, mechanical services, and AC repair.

WorkLink provides two separate user experiences:

- **Customer:** Discover skilled workers, explore profiles, and submit service booking requests.
- **Worker:** View incoming booking requests, manage job requests, and update service status.

Our objective is to simplify local service discovery while creating better employment opportunities and digital visibility for skilled workers.

## 2. Problem Statement

Finding reliable local workers remains challenging for many households and individuals.

Customers frequently depend on personal recommendations, scattered contact numbers, and informal networks to find service providers. This creates uncertainty regarding worker availability, experience, and service accessibility.

Meanwhile, many skilled workers face difficulties in reaching new customers and managing incoming job opportunities.

**WorkLink addresses this gap by bringing customers and local skilled workers together through one unified platform.**

## 3. Proposed Solution

WorkLink introduces a digital service discovery and booking system where customers can explore different service categories, view worker information, and submit booking requests.

Workers can access a dedicated dashboard to review requests and manage their job status.

The solution focuses on three major goals:

1. Simplifying access to everyday local services.
2. Increasing digital visibility and opportunities for skilled workers.
3. Establishing a foundation for a scalable hyperlocal service ecosystem.

## 4. Current Prototype Features

### Customer Module

- Customer and worker role selection.
- Service category browsing.
- Worker discovery and listing.
- Individual worker profiles.
- Worker skills and experience information.
- Service booking form.
- Preferred booking date selection.
- Booking request submission.

### Worker Module

- Dedicated worker dashboard.
- Incoming booking request overview.
- Customer and service request details.
- Accept or reject booking requests.
- Update accepted jobs as completed.
- Basic booking statistics.

### Available Service Categories

| Category | Service |
|---|---|
| 01 | Electrician |
| 02 | Plumber |
| 03 | Carpenter |
| 04 | Painter |
| 05 | Cleaner |
| 06 | Mechanic |
| 07 | AC Repair |
| 08 | Other Services |

## 5. How WorkLink Works

### Customer Workflow

1. Open the WorkLink application.
2. Select the Customer role.
3. Choose the required service category.
4. Explore available worker profiles.
5. Select a suitable worker.
6. Enter booking information.
7. Submit the service request.

### Worker Workflow

1. Open the application and select the Worker role.
2. Access the worker dashboard.
3. Review incoming booking requests.
4. Accept or reject a request.
5. Update the job status after completion.

This workflow demonstrates the primary functionality of the WorkLink prototype.

## 6. Technology Stack

| Technology | Purpose |
|---|---|
| Flutter | Cross-platform application development |
| Dart | Application programming |
| Material Design | User interface components |
| Git | Version control |
| GitHub | Source code management |
| Render | Flutter web prototype hosting |

### Current Architecture

```text
                  WorkLink
                      |
               Role Selection
                      |
          +-----------+-----------+
          |                       |
       Customer                 Worker
          |                       |
    Service Categories       Worker Dashboard
          |                       |
      Worker List           Booking Requests
          |                       |
     Worker Profile         Accept / Reject
          |                       |
      Booking Form          Update Job Status
          |                       |
          +-----------+-----------+
                      |
              In-Memory Booking
                 Management
```

## 7. Current Development Status

WorkLink is currently an initial functional prototype demonstrating its core user interface and service booking workflow.

The application uses sample worker information and temporary in-memory booking management.

**Current limitations:**

- Bookings are not stored in a persistent cloud database.
- Customer and worker accounts do not yet have production authentication.
- Worker information is currently demonstration data.
- Booking updates are not synchronized between independent users or devices.
- Real-time location matching, online payments, and identity verification are not yet integrated.

These capabilities are planned for future MVP development.

## 8. Future MVP Development Roadmap

Our next objective is to transform WorkLink from a functional prototype into a complete Minimum Viable Product (MVP).

| Development Phase | Planned Features |
|---|---|
| Phase 1 | Firebase integration and persistent database |
| Phase 2 | Customer and worker authentication |
| Phase 3 | Real-time location-based worker discovery |
| Phase 4 | Worker identity and document verification |
| Phase 5 | Booking notifications and status tracking |
| Phase 6 | Customer ratings and reviews |
| Phase 7 | Secure digital payment integration |
| Phase 8 | Multilingual support |
| Phase 9 | Improved worker availability and scheduling |
| Phase 10 | Admin dashboard and service management |

### Long-Term Vision

Future enhancements may include intelligent worker recommendations, improved service matching, worker performance insights, and expansion into additional local service categories.

## 9. Installation and Setup

### Prerequisites

- Flutter SDK
- Dart SDK
- Android Studio or Visual Studio Code
- Git
- Android device, emulator, or supported web browser

### Clone the Repository

```bash
git clone https://github.com/dravidr07/VISION_X_DRAVID.git
```

### Navigate to the Project

```bash
cd VISION_X_DRAVID
```

### Install Dependencies

```bash
flutter pub get
```

### Run the Application

```bash
flutter run
```

### Build the Android APK

```bash
flutter build apk --release
```

### Build the Web Application

```bash
flutter build web --release
```

The compiled web application will be generated inside the `build/web` directory.

## 10. Project Repository

**GitHub Repository:**

https://github.com/dravidr07/VISION_X_DRAVID

The repository contains the Flutter application source code and supporting project files.

## 11. Expected Impact

WorkLink aims to create value for both customers and skilled workers.

**For Customers**
- Easier access to everyday services.
- Simplified worker discovery.
- Convenient digital booking.
- Reduced dependency on informal contact networks.

**For Workers**
- Increased visibility among potential customers.
- Additional employment opportunities.
- Simplified job request management.
- Greater participation in the digital service economy.

**For Society**
- Support for local employment.
- Improved accessibility of essential services.
- Encouragement of digital adoption among independent skilled workers.
- Development of a more connected local service ecosystem.

## 12. Team

**Team Name:** VISION_X_DRAVID

**Project Name:** WorkLink

**Domain:** Hyperlocal Services / Transportation and Logistics

**Project Type:** Cross-Platform Application Prototype

---

### Our Vision

To build an accessible and trusted digital ecosystem where finding skilled local workers becomes easier, and every skilled worker has an opportunity to connect with customers.

**WorkLink — Connecting Local Skills with Local Needs.**
