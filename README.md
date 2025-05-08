# Hospital Portal

## Overview
The Hospital Portal is a Ruby on Rails application designed to manage hospital operations, including patient management, appointment scheduling, and user authentication. The application utilizes PostgreSQL as the database and Devise for user authentication.

## Features
- User authentication with roles (Receptionist and Doctor)
- Patient management (CRUD operations)
- Appointment scheduling and management
- Dashboard for doctors with analytics and upcoming appointments

## Technologies Used
- Ruby on Rails
- PostgreSQL
- Devise
- Bootstrap (for styling)
- Chart.js (for analytics)

## Installation
1. Clone the repository:
   ```
   git clone <repository-url>
   cd hospital-portal
   ```

2. Install the required gems:
   ```
   bundle install
   ```

3. Set up the database:
   ```
   rails db:create
   rails db:migrate
   rails db:seed
   ```

4. Start the Rails server:
   ```
   rails server
   ```

5. Access the application at `http://localhost:3000`.

## Usage
- Sign up as a receptionist or doctor to manage patients and appointments.
- Receptionists can create, update, and delete patient records.
- Doctors can view their appointments and access patient information.

## Contributing
Contributions are welcome! Please open an issue or submit a pull request for any enhancements or bug fixes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.