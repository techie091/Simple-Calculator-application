def main():
    try:
        expression = input("Enter expression (e.g. 2 + 3): ")
        result = eval(expression)
        print(f"Result: {result}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
