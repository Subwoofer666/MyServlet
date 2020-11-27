package app.model;

import app.entities.User;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Model {
    private static Model ins = new Model();

    public static List<User> getModel() {
        return model;
    }

    private static List<User> model;

    public static Model getIns() {
        return ins;
    }

    private Model() {
        model = new ArrayList<>();
    }

    public void add(User user) {
        model.add(user);
    }

    public List<String> list () {
        List <String> zxc = new ArrayList<>();
        for (User x : model) {
            zxc.add(x.getName());
            zxc.add(x.getAge());
        }
        return zxc;

//        return model.stream().map(User::getName).map(User::getAge).collect(Collectors.toList());

    }
}
