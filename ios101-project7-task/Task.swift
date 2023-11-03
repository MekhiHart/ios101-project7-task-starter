//
//  Task.swift
//

import UIKit

// The Task model
struct Task: Codable {

    // The task's title
    var title: String

    // An optional note
    var note: String?

    // The due date by which the task should be completed
    var dueDate: Date
//    var id: String
    
    let id: String

    // Initialize a new task
    // `note` and `dueDate` properties have default values provided if none are passed into the init by the caller.
    init(title: String, note: String? = nil, dueDate: Date = Date()) {
        self.title = title
        self.note = note
        self.dueDate = dueDate
        self.id = UUID().uuidString
    }

    // A boolean to determine if the task has been completed. Defaults to `false`
    var isComplete: Bool = false {

        // Any time a task is completed, update the completedDate accordingly.
        didSet {
            if isComplete {
                // The task has just been marked complete, set the completed date to "right now".
                completedDate = Date()
            } else {
                completedDate = nil
            }
        }
    }

    // The date the task was completed
    // private(set) means this property can only be set from within this struct, but read from anywhere (i.e. public)
    private(set) var completedDate: Date?

    // The date the task was created
    // This property is set as the current date whenever the task is initially created.
    let createdDate: Date = Date()

    // An id (Universal Unique Identifier) used to identify a task.
//    let id: String = UUID().uuidString
}

// MARK: - Task + UserDefaults
extension Task {


    // Given an array of tasks, encodes them to data and saves to UserDefaults.
    static func save(_ tasks: [Task]) {

        // TODO: Save the array of tasks
        // encode data
        // save data to UserDefault
        
        let defaults = UserDefaults.standard
        let encodedData = try! JSONEncoder().encode(tasks)
        defaults.set(encodedData, forKey: EnumKey.SavedTasks.rawValue)
        print("saved array tasks to defaults")
        
        
    }

    // Retrieve an array of saved tasks from UserDefaults.
    static func getTasks() -> [Task] {
        
        // TODO: Get the array of saved tasks from UserDefaults
        // get encoded data from Defaults
        // check if key is valid
        // if valid, decode data
        // return decoded data
        let defaults = UserDefaults.standard
        if let encodedData = defaults.data(forKey: EnumKey.SavedTasks.rawValue){
            let decodedData = try! JSONDecoder().decode([Task].self, from: encodedData)
            return decodedData
            
        }

        return [] // 👈 replace with returned saved tasks
    }

    // Add a new task or update an existing task with the current task.
    func save() {
        
        // TODO: Save the current task
        // retreive saved tasks
        // append the current task
        // save it
        
        
        var retrievedTasks = Task.getTasks()
        
        for idx in 0...retrievedTasks.count - 1{
            let task = retrievedTasks[idx]
            if task.id == self.id{
                retrievedTasks.remove(at: idx)
                break
            }
        }
        retrievedTasks.append(self)
        Task.save(retrievedTasks)
        print("saved self")
    }
}
