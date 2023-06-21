/** 1. Создать структуру работника пиццерии.
 В ней должны быть такие свойства, как имя, зарплата и должность. 
 Должностей пока может быть две: или кассир, или повар. 
 Добавить в класс пиццерии массив с работниками. */

struct Employee{
    var name: String
    var salary: Double
    var post: Position

    enum Position{
        case cashier
        case cook
    }
}
class Pizzeria{
    private var employee: [Person] = []
    private var tables: [Table] = []

    init (person: [Person]){
        self.person = person
    }
 }

 /** 2. Создать класс столика, в нём должно быть свойство,
  в котором содержится количество мест и функция, 
  которая на вход принимает количество гостей, которое хотят посадить,
   а возвращает true, если места хватает и false, 
   если места не хватает. 
   Изначальное количество мест задаётся в инициализаторе. */

class Table{
   var capacity: Int
   var restaurant: Pizzeria

   init(capacity: Int, restaurant: Pizzeria){
    self.capacity = capacity
    self.restaurant = restaurant
   }

    func getGuests(for guestscount: Int) -> Bool{
        return  guestscount <= capacity
    } 
}       


   /** 3. Добавить в класс пиццерии свойство,
    в котором хранится массив столиков. 
    У класса столика добавить свойство,
     в котором хранится кафе, в котором стоит столик.
      Столики создаются сразу в инициализаторе,
       не передаются туда в качестве параметра. */

class Pizzeria{
    var tables: [Table] = []

    init(){
        for i in 1...10{
            let table = Table(cafe: self, number: Int){
                self.cafe = cafe
                self.number = number
            }
        }
    }
class Table {
    let cafe: Pizzeria
    let number: Int

    init(cafe: Pizzeria, number: Int){
        self.cafe = cafe
        self.number = number
    }

    }
}