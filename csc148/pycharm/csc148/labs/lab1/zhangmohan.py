
class Runner:

    def __init__(self, email, speed):
        self._email = email
        self._speed = speed

    def get_email(self):
        return self._email

    def get_speed(self):
        return self._speed

runners = []

def add_runners(a_runner):
    if isinstance(a_runner, Runner):
        runners.append(a_runner)
    else:
        print('it is not a runner!')
        raise TypeError

#print('the initial runners:', runners)
#a = Runner('163.com', 30)
#add_runners(a)

def get_a_list_from_speed(v):
    returned_list = []
    if v == 'under 20 minutes':
        a = 0
        b = 20
    elif v == 'under 30 minutes':
        a = 20
        b = 30
    elif v == 'under 40 minutes':
        a = 30
        b = 40
    elif v == '40 minutes or over':
        a = 40
        b = 99999
    for i in runners:
        if i._speed >= a and i._speed <= b:
            returned_list.append(i)
    return returned_list

def get_speed_from_email(e):
    for i in runners:
        if i._email == e:
            return i._speed
    print('Nobody has such a email!')
    return None
