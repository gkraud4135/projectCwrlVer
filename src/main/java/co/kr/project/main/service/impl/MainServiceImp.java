package co.kr.project.main.service.impl;

import co.kr.project.main.service.MainService;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.MalformedURLException;
import java.util.HashMap;
import java.util.Map;

@Service("mainService")
public class MainServiceImp implements MainService {

    @Override
    public void test(String url) throws Exception{

        System.out.println(url);

    }


}
