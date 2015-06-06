import 'dart:io';
import 'dart:async';

main() async{
	await Process.run('gpio',['-g','mode','18','out']);
	for( int count = 0; count < 5; ++count){
		await Process.run('gpio',['-g','write','18','1']);
		await delay(1000);
		await Process.run('gpio',['-g','write','18','0']);
		await delay(1000);
	}
}

Future delay(int milliseconds) async{
	await new Future.delayed(new Duration(milliseconds: milliseconds));
}
