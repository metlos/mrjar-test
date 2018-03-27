package pkg1.pkg2;
public class ClassB { private pkg1.ClassA field; 
	public ClassB() {
		field = new pkg1.ClassA();
	}

	public static String identify() { return "src9: ClassB, seeing: " + pkg1.ClassA.identify(); }
}
