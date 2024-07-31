## File and Directory Search Script

This script allows you to search for files or directories within a specified location based on their modification dates. It supports interactive input for selecting the type of element to search for and defining the search criteria.

## Features

- Search for files or directories.
- Input validation for location and dates.
- Sort and display search results based on modification dates.
- Handles permissions and date validation.

## Usage

Run the script and follow the prompts to search for files or directories within a specified location.

### Interactive Prompts

1. **Select the Type of Element:**
   - Choose between searching for files or directories.

2. **Enter the Path:**
   - Provide the path to the location where you want to perform the search.

3. **Enter Date Range:**
   - Provide the start and end dates to filter results based on modification times.

### Example

To search for files modified between `2023-01-01` and `2023-01-31` in the `/home/user/documents` directory:

```bash
./search_script.sh
```

Follow the prompts:

1. Select `1` for File.
2. Enter `/home/user/documents` as the location.
3. Enter `2023-01-01` as the start date.
4. Enter `2023-01-31` as the end date.


## Installation

Clone the repository:

```bash
git clone https://github.com/yourusername/search-script.git
cd search-script
```
Make the script executable:

```bash
chmod +x search_script.sh
```
## Dependencies

This script relies on standard Unix utilities such as `find`, `stat`, and `date`, which are typically pre-installed on most Linux distributions.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -m 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Open a pull request.

## Acknowledgments

- [GNU Findutils](https://www.gnu.org/software/findutils/) - Tools for finding files and processing them.
- [GNU Coreutils](https://www.gnu.org/software/coreutils/) - Basic file, shell, and text manipulation utilities.

## Contact

For any questions or feedback, please open an issue on GitHub.


