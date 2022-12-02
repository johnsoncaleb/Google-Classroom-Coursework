class parkingGarage():
    def __init__(self):
        self.tickets = [1,2,3,4,5,6,7,8,9,10]
        self.parking_spaces = [1,2,3,4,5,6,7,8,9,10]
        self.current_ticket = {}

    def takeTicket(self):
        if self.tickets:
            print(f'{self.tickets[0]} is your ticket number')

            self.current_ticket[self.tickets[0]] = 'unpaid'

            self.tickets.pop(0)
            self.parking_spaces.pop(0)

    def payForParking(self):
        spot = int(input('What is your ticket number? '))
        if self.current_ticket.get(spot) == 'unpaid':
            print('Thank you for paying, we ask that you please vacate the spot within 15 minutes')

            self.current_ticket[spot] = 'paid'
            self.parking_spaces.append[spot]

    
    def leaveGarage(self):
        empty = int(input('Ticket number? '))
        if self.current_ticket[empty] == 'paid':
            print('Thank you have a nice day!')
            self.tickets.append(empty)
            del self.current_ticket[empty]
        elif self.current_ticket[empty] == 'unpaid':
            print('Please pay before leaving')

    def Operations(self):
        while True:
            response = input("T for Take ticket \n P for Pay Ticket \n L for Leave Garage \n Q for quit \n Please enter your choice: ")

            if response.lower() == 'q':
                print('Have a nice day')
            elif response.lower() == 't':
                parkingGarage.takeTicket(self)
            elif response.lower() == 'p':
                parkingGarage.payForParking(self)
            elif response.lower() == 'l':
                parkingGarage.leaveGarage()

run = parkingGarage()
run.Operations()

            

