# Practical 15 - PhoneBook Database

## Database Dump File: `phonebook_db_dump.sql`

This file contains the complete database structure and sample data for the PhoneBook application (Practical 15.py).

## Database Structure

### Database Name: `phonebook_db`

### Table: `contacts`

| Field      | Type          | Null | Key | Default         | Extra          |
|------------|---------------|------|-----|-----------------|----------------|
| id         | int(11)       | NO   | PRI | NULL            | auto_increment |
| name       | varchar(100)  | NO   |     | NULL            |                |
| phone      | varchar(15)   | NO   | UNI | NULL            |                |

### Indexes
- PRIMARY KEY on `id`
- UNIQUE KEY on `phone`
- INDEX on `name` for faster searches
- INDEX on `phone` for faster lookups

## Sample Data

The dump includes 10 sample contacts:

1. John Doe - 123-456-7890
2. Jane Smith - 098-765-4321
3. Alice Johnson - 555-123-4567
4. Bob Wilson - 444-987-6543
5. Emma Davis - 777-555-1234
6. Michael Brown - 888-444-5678
7. Sarah Miller - 999-333-7890
8. David Garcia - 222-666-1111
9. Lisa Anderson - 333-777-2222
10. James Taylor - 666-888-3333

## How to Use the Dump File

### Method 1: Command Line
```bash
mysql -u root -p < phonebook_db_dump.sql
```

### Method 2: MySQL Client
```sql
SOURCE phonebook_db_dump.sql;
```

### Method 3: phpMyAdmin or MySQL Workbench
1. Open the SQL file in your MySQL client
2. Execute the entire file

## Features of the Database

- **Auto-incrementing IDs**: Each contact gets a unique ID automatically
- **Phone Uniqueness**: No duplicate phone numbers allowed
- **Name Validation**: Names are required and stored as text
- **Timestamps**: Creation time is automatically recorded
- **Search Optimization**: Indexes on name and phone for fast searches

## Application Features

The Practical 15.py application provides:

1. **Add Contact**: Add new contacts with duplicate checking
2. **View Contacts**: Display all contacts in a formatted table
3. **Search Contact**: Find contacts by name or phone number
4. **Edit Contact**: Update existing contact information
5. **Delete Contact**: Remove contacts from the phonebook

## Table Display Format

The application displays contacts in a professional table format:

```
--- All Contacts ---
+----+----------------------+----------------+
| ID | Name                 | Phone          |
+----+----------------------+----------------+
| 1  |Test                  | 123-456-7890   |
| 2  |Testing               | 098-765-4321   |
+----+----------------------+----------------+

Total contacts: 2
```

## Notes

- The database is automatically created by Practical 15.py on first run
- The dump file is provided for backup/restore purposes
- All operations include proper error handling and duplicate prevention
- The application uses parameterized queries for security

## Troubleshooting

If you encounter issues:

1. Ensure MySQL server is running
2. Check database credentials in the script
3. Verify the dump file path when importing
4. Make sure you have proper MySQL user permissions

## File Structure

- `Practical 15.py` - Main phonebook application
- `phonebook_db_dump.sql` - Database dump with structure and sample data
- `README_Practical15.md` - This documentation file
