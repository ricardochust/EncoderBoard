#include "main.h"
#include "lwip.h"

#include "ST-LIB.hpp"
#include "Runes/Runes.hpp"

uint32_t counter = 0;
uint32_t last_counter = 0;
double position = 0;
double direction = 0;
double speed = 0;
double acceleration = 0;

int main(void)
{
	/*uint8_t encoder_id = Encoder::inscribe(PC6,PC7);
	uint8_t led_id = DigitalOutputService::inscribe(PE1);
	STLIB::start();
	Encoder::turn_on(encoder_id);
	Encoder::reset(encoder_id);
	Time::register_low_precision_alarm(1000, [&](){DigitalOutputService::toggle(led_id);});
	while(1) {
		counter = Encoder::get_counter(encoder_id);

	}*/
	StackPacket spe(669,&speed,&position,&direction);
	EncoderSensor encoder(PC6,PC7,&position,&direction,&speed,&acceleration);
	uint8_t led_id = DigitalOutputService::inscribe(PE1);
	STLIB::start();
	DatagramSocket server(IPV4("192.168.1.15"),50400,IPV4("192.168.1.6"),50400);
	server.reconnect();
	DatagramSocket server2(IPV4("192.168.1.15"),50400,IPV4("192.168.0.9"),50400);
	server2.reconnect();
	encoder.start();
	Time::register_low_precision_alarm(1,[&](){server.send(spe);server2.send(spe);});
	Time::register_low_precision_alarm(1000, [&](){DigitalOutputService::toggle(led_id);});
	while(1) {
		encoder.read();
		STLIB::update();
	}

}

void Error_Handler(void)
{
	ErrorHandler("HAL error handler triggered");
	while (1){}
}
