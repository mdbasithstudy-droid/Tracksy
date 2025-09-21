class Bus {
  String name;
  String route;
  int busNumber;
  int seats;

  Bus({
    required this.name,
    required this.route,
    required this.busNumber,
    this.seats = 0,
  });
}

class BusData {
  static final BusData _instance = BusData._internal();
  factory BusData() => _instance;
  BusData._internal();

  final List<Bus> buses = [];

  void addBus(String name, String route, int busNumber) {
    buses.add(Bus(name: name, route: route, busNumber: busNumber));
  }

  void incrementSeats(int index) => buses[index].seats++;
  void decrementSeats(int index) {
    if (buses[index].seats > 0) buses[index].seats--;
  }
}

class StudentRequest {
  String studentName;
  String boardingPoint;
  bool accepted;

  StudentRequest({required this.studentName, required this.boardingPoint, this.accepted = false});
}

class RequestData {
  static final RequestData _instance = RequestData._internal();
  factory RequestData() => _instance;
  RequestData._internal();

  final List<StudentRequest> requests = [];

  void addRequest(StudentRequest request) => requests.add(request);
  void acceptRequest(int index) => requests[index].accepted = true;
}
