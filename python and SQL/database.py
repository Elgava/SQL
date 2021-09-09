import sqlite3

connection = sqlite3.connect("data.db")

def create_table():
	while connection:
		connection.execute("Create Table if not exists entries(content TEXT, data TEXT)")

def add_entry(entry_content, entry_date):
	with connection:
		connection.execute(
			"insert into entries Values(?, ?);", (entry_content, entry_date)
		)

def get_entries():
	return entries
