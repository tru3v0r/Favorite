package org.eql.al35;

import java.awt.Desktop;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;


@SpringBootApplication
public class FavoriteApplication {
/*
Class cointaining main from which app launches
 */

	private static Logger log = LoggerFactory.getLogger(
			FavoriteApplication.class);

	public static void main(final String[] args) {
		SpringApplication.run(FavoriteApplication.class, args);
	}

	//Lorsque l'ensemble des config sont finalisée = lancement du navigateur
	// sur l'url défini
	@EventListener({ApplicationReadyEvent.class})
	static void applicationReadyEvent() {
	    openBrowser("http://localhost:8085/home");
	}

	/**
	 * Opens the app in default browser
	 */
	public static void openBrowser(final String url) {
	    if (Desktop.isDesktopSupported()) {
	        Desktop desktop = Desktop.getDesktop();
	        try {
	            desktop.browse(new URI(url));
	        } catch (IOException | URISyntaxException e) {
	            log.error(e.getMessage());
	        }
	    } else {
	        Runtime runtime = Runtime.getRuntime();
	        try {
	            runtime.exec("rundll32 url.dll,FileProtocolHandler " + url);
	        } catch (IOException e) {
	        	log.error(e.getMessage());
	        }
	    }
	}
}
