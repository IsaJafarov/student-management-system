package az.edu.bsu.smsproject.listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;
import java.util.concurrent.atomic.AtomicInteger;

@WebListener
public class SessionListener implements HttpSessionListener {

        private final AtomicInteger activeSessions;

        public SessionListener() {
            super();
            activeSessions = new AtomicInteger();
        }

        public int getTotalActiveSession() {
            return activeSessions.get();
        }

        @Override
        public void sessionCreated(final HttpSessionEvent event) {
            System.out.println("New session is created");
            activeSessions.incrementAndGet();
            System.out.println("--"+event.toString());
            System.out.println("Number of sessions: "+activeSessions);
        }

        @Override
        public void sessionDestroyed(final HttpSessionEvent event) {
            System.out.println("Session ended");
            activeSessions.decrementAndGet();
            System.out.println("Number of sessions: "+activeSessions);
        }

}
