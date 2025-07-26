class Root:
    def __init__(self,data):
        self.data = data
        self.left = None
        self.right = None

    def show(self):
        if self.left:
            self.left.show()
        print(self.data)
        if self.right:
            self.right.show()


if __name__ == "__main__": 
    root = Root(100)
    r_left = Root(99)
    r_right = Root(101)
    root.left =r_left
    root.right = r_right
    root.show()