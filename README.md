# ToDo App

A new Flutter project.



# ToDo App

## Overview

The ToDo app is a simple task management application that allows users to create, update, and delete tasks. It uses Hive as a local database for efficient and lightweight storage of tasks on the device.

## Features

- Add new tasks with a title and description.
- Mark tasks as completed.
- Edit existing tasks.
- Delete tasks.
- Local storage using Hive.

## Technologies Used

- Flutter: The framework used for building the mobile app.
- Hive: A lightweight and fast NoSQL database for local storage in Flutter.

## Getting Started

### Prerequisites

- Flutter installed on your machine. You can follow the instructions on the [official Flutter website](https://flutter.dev/docs/get-started/install) for installation.
- Clone this repository to your local machine.

### Installation

1. Open a terminal window in the project directory.

2. Run the following command to get the required dependencies:

   ```bash
   flutter pub get
   ```

### Running the App

1. Ensure you have an emulator/device connected or running.

2. Run the following command to start the app:

   ```bash
   flutter run
   ```

## Usage

1. Launch the app on your emulator/device.

2. Use the app to create, edit, and manage your tasks.

## Local Database (Hive)

The app uses Hive as a local database for efficient and fast storage of tasks. The Hive database is located in the `hive` directory within the app's data directory.

### Hive Commands

- To generate Hive adapters:

  ```bash
  flutter packages pub run build_runner build
  ```

- To run Hive tests:

  ```bash
  flutter test
  ```

## Contributing

Feel free to contribute to the development of this app by opening issues or submitting pull requests.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Special thanks to the Flutter and Hive communities for their awesome contributions.

##screshots



![photo_2023-10-18_20-05-14](https://github.com/aswinmv/todoapp/assets/65582177/ea45ed3b-4fff-45a3-b2d8-6cf1b780769e)




