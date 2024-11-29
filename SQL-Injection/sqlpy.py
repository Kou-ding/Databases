import pymysql

def drop_database(database_name):
    try:
        # Establish the connection
        connection = pymysql.connect(
            host="%",         # Change to your host
            user="test",     # Replace with your MariaDB username
            password="test"  # Replace with your MariaDB password
        )

        with connection.cursor() as cursor:
            # Drop the database
            cursor.execute(f"DROP DATABASE IF EXISTS {database_name}")
            print(f"Database '{database_name}' has been dropped successfully.")

    except pymysql.MySQLError as e:
        print(f"Error: {e}")

    finally:
        # Close the connection
        connection.close()
        print("MariaDB connection closed.")

# Example usage
drop_database("issel")
