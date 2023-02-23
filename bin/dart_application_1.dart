import 'package:dart_application_1/manager_persion.dart';
import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_1;

class Teacher extends ManagerPersion {
  Teacher(
      {required this.salary,
      required this.numberWorkDay,
      required super.id,
      required super.name,
      required super.phone,
      required super.address});
  final double salary;
  final int numberWorkDay;
}

class Student extends ManagerPersion {
  Student(
      {required this.batch,
      required this.mark1,
      required this.mark2,
      required super.id,
      required super.name,
      required super.phone,
      required super.address});
  final String batch;
  final double mark1;
  final double mark2;
}

List<Teacher> teacherPersion = [
  Teacher(
    salary: 100000,
    numberWorkDay: 22,
    id: 1,
    name: "Nguyen Van A",
    phone: "012345678",
    address: "DN",
  ),
  Teacher(
    salary: 200000,
    numberWorkDay: 24,
    id: 2,
    name: "Nguyen Van B",
    phone: "012345678",
    address: "HN",
  ),
  Teacher(
    salary: 300000,
    numberWorkDay: 28,
    id: 1,
    name: "Nguyen Van C",
    phone: "012345678",
    address: "HCM",
  ),
];

List<Student> studentPersion = [
  Student(
    batch: "batch1",
    mark1: 1,
    mark2: 1,
    id: 1,
    name: "Hoang Van 1",
    phone: "091222837",
    address: "Lien Chieu",
  ),
  Student(
    batch: "batch2",
    mark1: 2,
    mark2: 2,
    id: 2,
    name: "Tran Van 2",
    phone: "091222837",
    address: "Hoa Khanh",
  ),
  Student(
    batch: "batch3",
    mark1: 3,
    mark2: 3,
    id: 3,
    name: "Tran Van 3",
    phone: "091222837",
    address: "Thanh Khe",
  ),
];

class ShowStudent {
  showStudentName() {
    return studentPersion.map((e) => e.name);
  }
}

class ShowTeacher {
  showTeacherName() {
    return teacherPersion.map((e) => e.name);
  }
}

class Salary {
  getSalary() {
    return teacherPersion.map(
        (e) => 'giao vien ${e.name} co luong là ${e.numberWorkDay * 800000}');
  }
}

class Mark {
  getMark() {
    return studentPersion.map((e) {
      return (e.mark1 + e.mark2) / 2;
    });
  }
}

class Fill {
  getFill() {
    return studentPersion.where((element) {
      return element.name.startsWith("Tran");
    });
  }
}

class SortNameStudent {
  getSort() {
    return studentPersion.sort((a, b) {
      return a.name.compareTo(b.name);
    });
  }
}

class SortNameTeacher {
  getSort() {
    return teacherPersion.sort((a, b) {
      return a.name.compareTo(b.name);
    });
  }
}

class SumSalary {
  getSum() {
    print(teacherPersion[0].salary +
        teacherPersion[1].salary +
        teacherPersion[2].salary);
  }
}

void main() {
  // ShowStudent student1 = ShowStudent();
  // print(student1.showStudentName());

  // ShowTeacher teacher1 = ShowTeacher();
  // print(teacher1.showTeacherName());

  // Salary salary = Salary();
  // print(salary.getSalary());

  // Mark mark = Mark();
  // print(mark.getMark());

  // Fill fillStudent = Fill();
  // print(fillStudent.getFill());

  // SortNameStudent sortname = SortNameStudent();
  // print(sortname.getSort());

  // SortNameStudent sortname1 = SortNameStudent();
  // print(sortname1.getSort());

  // SumSalary sumsalary = SumSalary();
  // print(sumsalary.getSum());
}
