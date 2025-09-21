class StudentRequest {
  String studentName;
  String boardingPoint;
  bool accepted;

  StudentRequest({required this.studentName, required this.boardingPoint, this.accepted = false});
}

class RequestService {
  static final RequestService _instance = RequestService._internal();
  factory RequestService() => _instance;
  RequestService._internal();

  final List<StudentRequest> _requests = [];

  List<StudentRequest> get requests => _requests;

  void addRequest(String boardingPoint) {
    _requests.add(StudentRequest(studentName: "Student", boardingPoint: boardingPoint));
  }

  void acceptRequest(int index) {
    _requests[index].accepted = true;
  }
}
