import array

class Queue:
    def __init__(self):
        self.my_queue = array.array('i',[])
        self.rear = -1

    def get_rear(self):
        if not self.is_empty():
            return self.my_queue[-1]
        else:
            return "Queue is empty"

    def get_front(self):
        if not self.is_empty():
            return self.my_queue[0]
        else:
            return "Queue is empty"

    def is_empty(self):
        if len(self.my_queue):
            return False
        else:
            return True

    def enqueue(self,element):
        self.my_queue.append(element)

    def dequeue(self):
        if self.is_empty():
            print("queue is empty")
        else:
            self.my_queue.pop(0)


if __name__ == "__main__":

    queue = Queue()
    # print(queue.get_front())
    print(queue.get_rear())
    queue.enqueue(1)
    queue.enqueue(2)
    print(queue.get_rear())
    queue.enqueue(3)
    # print(queue.get_front())
    # print(queue.my_queue)

    queue.dequeue()
    # print(queue.my_queue)
    