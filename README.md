# Ruby-Fundamental

## Book Management System

### Overview

Book Management System is a simple command-line application for managing a collection of books. It allows users to add books, compare book details, update book information, list all books, and find books with the highest likes or prices. This project is written in Ruby and demonstrates basic object-oriented programming principles and user input handling.

### Features

1. **Add Book:** Add new book details including name, author, genre, number of copies, likes, and price.
2. **Compare Books:** Compare details of two books from the collection.
3. **Change Book Details:** Update the information of an existing book.
4. **List Books:** Display all books in the collection.
5. **Find Book with Highest Likes:** Find the book with the highest number of likes.
6. **Find Book with Highest Price:** Find the book with the highest price.
7. **Quit:** Exit the application.

### Installation

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/bookinfo.git
   cd bookinfo
   ```

2. **Run the application:**
   ```bash
   ruby menu.rb
   ```

### File Structure

```
.
├── menu.rb
├── add.rb
├── compare.rb
├── update.rb
├── list.rb
├── highest.rb
├── validation.rb
└── README.md
```

- `menu.rb`: The main menu loop of the application.
- `add.rb`: Functionality for adding a new book.
- `compare.rb`: Functionality for comparing details of two books.
- `update.rb`: Functionality for updating book details.
- `list.rb`: Functionality for listing all books.
- `highest.rb`: Functionality for finding the book with the highest likes or price.
- `validation.rb`: Contains helper methods for input validation.

### Usage

1. **Run the application:**
   ```bash
   ruby menu.rb
   ```

2. **Navigate through the menu:**
   - Enter the number corresponding to your choice and follow the prompts.
   - To exit, select option `7. Quit`.

### Example Usage

1. **Adding a Book:**
   ```
   Enter your choice: 1
   Enter Book Name: The Great Gatsby
   Enter Author Name: F. Scott Fitzgerald
   Enter Book Genre: Fiction
   Enter No of Copies: 5
   Likes: 150
   Price: 19.99
   ```

2. **Comparing Books:**
   ```
   Enter your choice: 2
   Enter Book 1: The Great Gatsby
   Enter Book 2: To Kill a Mockingbird
   ```

3. **Updating Book Details:**
   ```
   Enter your choice: 3
   Enter Book Name to Change Details: The Great Gatsby
   ```

4. **Listing All Books:**
   ```
   Enter your choice: 4
   ```

5. **Finding Book with Highest Likes:**
   ```
   Enter your choice: 5
   ```

6. **Finding Book with Highest Price:**
   ```
   Enter your choice: 6
   ```

### Contributing

1. Fork the repository.
2. Create a new branch.
3. Make your changes.
4. Submit a pull request.

### Contact

For any questions or issues, please open an issue on the GitHub repository.
