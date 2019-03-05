package edu.nju.yummy.security;

import edu.nju.yummy.entity.KeyRecord;
import edu.nju.yummy.entity.UserType;
import edu.nju.yummy.repository.KeyRecordRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collection;

@Service
public class MyUserDetailsService implements UserDetailsService {

    private final KeyRecordRepository keyRecordRepository;

    @Autowired
    public MyUserDetailsService(KeyRecordRepository keyRecordRepository) {
        this.keyRecordRepository = keyRecordRepository;
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        String name = username.substring(1);
        char c = username.charAt(0);
        UserType type;
        Collection<GrantedAuthority> authorities = new ArrayList<>();

        if (c == 'u') {
            type = UserType.USER;
            authorities.add(new SimpleGrantedAuthority("USER"));
        }
        else if (c == 'r') {
            type = UserType.RESTAURANT;
            authorities.add(new SimpleGrantedAuthority("RESTAURANT"));
        }
        else {
            type = UserType.ADMIN;
            authorities.add(new SimpleGrantedAuthority("ADMIN"));
        }
        KeyRecord record = keyRecordRepository.findByUserTypeAndLogName(type, name);

        if (record == null) throw new UsernameNotFoundException(name + " not found");

        return new User(""+record.getLogId(), record.getPassword(), authorities);
    }

}
