# Project 7 - *Todo CRUD app*

Submitted by: **Mekhi Hart Dela Cruz**

**Name of your app** is an app that ... [TODO] 
- Tracks and manages tasks

Time spent: **4.5** hours spent in total

## Required Features

The following **required** functionality is completed:

- [X] App displays a list of tasks
- [X] Users can add tasks to the list
- [X] Session persists when application is closed and relaunched (tasks dont get deleted when closing app) 
  - [X] Note: You have to quit the app, not minimize it, in order to see the persistence.
- [X] Tasks can be deleted
- [X] Users have a calendar view via navigation controller that displays tasks	


The following **additional** features are implemented:

- [X] Tasks can be toggled completed
- [X] User can edit tasks by tapping on the task in the feed view
- [X] List anything else that you can get done to improve the app functionality!

## Video Walkthrough

Here is a reminder on how to embed Loom videos on GitHub. Feel free to remove this reminder once you upload your README. 

https://youtu.be/UXFoqsQu6Bs

## Notes

I would recommend changing the ID property of the task to be instantiated inside the constructor. The current implementation of the Task class instantiates its id outside the constructor and creates a new task id everytime a Task with type Data is downcasted to the Task class. This just made it hard to debug when and caused bugs such as Task when a task is edited and press the done button since it couldn't find the duplicate task when the ID is new everytime.

## License

    Copyright [yyyy] [name of copyright owner]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
