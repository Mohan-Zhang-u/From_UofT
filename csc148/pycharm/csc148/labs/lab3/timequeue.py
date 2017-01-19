from myqueue import Queue
from timer import Timer


def profile_enqueue(queue_size, repetitions):
    """Return the average time to enqueue in a Queue of <queue_size>.

    Run the experiment <repetitions> times to compute the average.

    @type queue_size: int
    @type repetitions: int
    @rtype: float
    """
    # TODO: Step 1. Create <repetitions> identical queues of size <queue_size>.
    
    # TODO: Step 2. Time the enqueue operation over each queue using Timer.

    # TODO: Step 3. Return the average time take for the operation.
    q = Queue()
    # a Queue that is going to be test.
    total_time = 0
    rep_copy =repetitions
    while rep_copy > 0:
        with Timer('Queue1 push ' + str(queue_size)):
            for i in range(queue_size):
                q.enqueue(i)
            total_time = total_time + Timer.interval_time
        rep_copy = rep_copy - 1
    average_time = total_time / repetitions
    print('the average time of enqueue' + queue_size + 'times takes' + average_time + 'seconds')
    return None



def profile_dequeue(queue_size, repetitions):
    """Return the average time to dequeue in a Queue of <queue_size>.

    Run the experiment <repetitions> times to compute the average.

    @type queue_size: int
    @type repetitions: int
    @rtype: float
    """
    # Follow the same pattern as 'profile_enqueue'.
    pass


if __name__ == '__main__':
    # TODO: Put in some code here to run some timing experiments.
    # We recommend having queue sizes in the 10 000's to see some
    # noticeable growth in the time taken.
    profile_enqueue(5000,10)
    pass
