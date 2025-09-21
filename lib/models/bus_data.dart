class Bus {
  String name;
  String route;
  String busNumber; // Alphanumeric
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

  void addBus(String name, String route, String busNumber) {
    buses.add(Bus(name: name, route: route, busNumber: busNumber));
  }

  void incrementSeats(String busNumber) {
    final bus = buses.firstWhere((b) => b.busNumber == busNumber);
    bus.seats++;
  }

  void decrementSeats(String busNumber) {
    final bus = buses.firstWhere((b) => b.busNumber == busNumber);
    if (bus.seats > 0) bus.seats--;
  }
}

// ---------------------- Student Requests ----------------------

class StudentRequest {
  String studentName;
  String boardingPoint;
  bool accepted;

  StudentRequest({
    required this.studentName,
    required this.boardingPoint,
    this.accepted = false,
  });
}

class RequestData {
  static final RequestData _instance = RequestData._internal();
  factory RequestData() => _instance;
  RequestData._internal();

  final List<StudentRequest> requests = [];

  void addRequest(StudentRequest request) => requests.add(request);

  void acceptRequest(int index) => requests[index].accepted = true;
}
