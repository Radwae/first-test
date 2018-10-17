package com.carrefourFedelity.jms;

import java.net.URI;
import java.net.URISyntaxException;

import org.apache.activemq.broker.BrokerFactory;
import org.apache.activemq.broker.BrokerService;
import org.apache.xbean.spring.context.ClassPathXmlApplicationContext;

public class ApplicationJms {

	public static void main(String[] args) throws URISyntaxException, Exception {
		BrokerService broker =  BrokerFactory.createBroker(new 
				URI ("broker:(tcp://localhost:61610)"));
		broker.start();
		ClassPathXmlApplicationContext context = 
				new ClassPathXmlApplicationContext("applicationContext.xml");
		
		try {
			SpringJmsProducer producer = context.getBean(SpringJmsProducer.class);
			producer.sendMessage("Bonsoir Radwane");
			
			SpringJmsConsumer consumer = context.getBean(SpringJmsConsumer.class);
		    String message = consumer.receiveMessage();
		    
		    System.out.println("Le message recue est: +"+message);
		} finally {
			 broker.stop();
			    context.close();
		}
		
		
	   

	}

}
