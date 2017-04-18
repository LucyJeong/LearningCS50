def main():
	x = 1
	y = 2
	
	print('x is {}'.format(x))
	print('y is {}'.format(y))
	print('swapping....')
	(x,y) = (y,x)
	print('swapped.')
	print('x is {}'.format(x))
	print('y is {}'.format(y))

if __name__ == '__main__':
	main()
