abstract class SmartDevice {
  String name;

  SmartDevice(this.name);

  turnOn();

  turnOff();
}

class Light extends SmartDevice {
  Light(super.name);
  @override
  turnOn() {
    print('$name: The light is on');
  }

  @override
  turnOff() {
    print('$name: The light is of');
  }
}

class AirConditioner extends SmartDevice {
  double temperature;
  AirConditioner(super.name, this. temperature);

  @override
  turnOn() {
    print(
        '$name: The air conditioner was turned on at a temperature on > $temperature');
  }

  @override
  turnOff() {
    print('$name:The air conditioner has been turned off > $temperature');
  }

  void setTemperature(double temp) {
    temperature = temp;
    print('$name: The temperature has been set to $temperature');
  }
}

class SecurityCamera extends SmartDevice {
  SecurityCamera(super.name);

  @override
  turnOn() {
    print('$name:The camera started recording');
  }

  @override
  turnOff() {
    print('$name: The camera stopped recording');
  }

  void detectMotion() {
    print('$name : Movement detected!');
  }
}

class SmartDoors extends SmartDevice {
  SmartDoors(super.name);

  @override
  turnOn() {
    print('$name: The door has been opened');
  }

  @override
  turnOff() {
    print('$name:The door was locked');
  }
}

void main() {
  var livingRoomLight = Light('ضوء الصالة');

  var bedroomAC = AirConditioner('مكيف غرفة النوم', 24.0);

  var frontCamera = SecurityCamera('كاميرا الباب الأمامي');

  var mainDoor = SmartDoors('الباب الرئيسي');

  List<SmartDevice> devices = [
    livingRoomLight,
    bedroomAC,
    frontCamera,
    mainDoor
  ];
  for (SmartDevice devise in devices) {
    devise.turnOn();
    devise.turnOff();
  }
}
