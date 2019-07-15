package de.avpod.aws.lambda.java11;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class LambdaHandler implements RequestHandler<String, String> {
    private static final Logger log = LogManager.getLogger(LambdaHandler.class);

    @Override
    public String handleRequest(String input, Context context) {
        var someText = "This is var text";
        log.info("Got request with input {} {}", someText, input);
        return input;
    }
}
