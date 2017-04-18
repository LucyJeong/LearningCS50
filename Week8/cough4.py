def main():
	cough(3)
	sneeze(3)

def cough(n):
	say('cough',n)

def sneeze(n):
	say('achoo',n)

def say(word,n):
	for i in range(n):
		print(word)

if __name__ == "__main__":
	main()
