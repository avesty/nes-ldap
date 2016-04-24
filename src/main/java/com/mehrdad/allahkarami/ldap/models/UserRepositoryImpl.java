package com.mehrdad.allahkarami.ldap.models;

/**
 * Created by metao on 4/22/2016.
 */

import org.apache.log4j.Logger;
import org.springframework.ldap.core.DistinguishedName;
import org.springframework.ldap.core.LdapTemplate;
import org.springframework.stereotype.Component;

import javax.naming.directory.*;
import java.util.List;

/**
 * This class implements the @see {@link UserRepositoryIntf}.
 *
 * @author Metao
 */
@Component
public class UserRepositoryImpl /*implements UserRepositoryIntf*/ {

    private static Logger log = Logger.getLogger(UserRepositoryImpl.class);
    /*@Autowired(required = true)
    @Qualifier(value = "ldapTemplate")*/
    private LdapTemplate ldapTemplate;

    public UserRepositoryImpl() {

    }

    public static javax.naming.Name bindDN(String _x) {
        @SuppressWarnings("deprecation")
        javax.naming.Name name = new DistinguishedName("uid=" + _x + ",ou=users");
        return name;
    }

    public void setLdapTemplate(LdapTemplate ldapTemplate) {
        this.ldapTemplate = ldapTemplate;
    }

    /*
     * (non-Javadoc)
     *
     * @see ldap.advance.example.UserRepositoryIntf#getAllUserNames()
     */
    public List<String> getAllUserNames() {
/*
        log.info("executing {getAllUserNames}");
        LdapQuery query = query().base("ou=users");
        List<String> list = ldapTemplate.list(query.base());
        log.info("Users -> " + list);
        return ldapTemplate.search(query().base("ou=users").where("objectClass").is("person"), new SingleAttributesMapper());
       */
        return null;
    }

    /*
     * (non-Javadoc)
     *
     * @see ldap.advance.example.UserRepositoryIntf#getAllUsers()
     */
    /*public List<User> getAllUsers() {
        SearchControls controls = new SearchControls();
        controls.setSearchScope(SearchControls.SUBTREE_SCOPE);
        return ldapTemplate.search(DistinguishedName.EMPTY_PATH, "(objectclass=person)", controls, new UserAttributesMapper());
    }*/

    /*
     * (non-Javadoc)
     *
     */
    public User getUserDetails(String userName) {
      /*
        log.info("executing {getUserDetails}");
        List<User> list = ldapTemplate.search(query().base("ou=users").where("uid").is(userName), new UserAttributesMapper());
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        */
        return null;
    }

    /*
     * (non-Javadoc)
     *
     * @see ldap.advance.example.UserRepositoryIntf#getUserDetail(java.lang.String)
     */
    public String getUserDetail(String userName) {
        /*
        log.info("executing {getUserDetails}");
        List<String> results = ldapTemplate.search(query().base("ou=users").where("uid").is(userName), new MultipleAttributesMapper());
        if (results != null && !results.isEmpty()) {
            return results.get(0);
        }
        */
        return " userDetails for " + userName + " not found .";
    }

    /*
     * (non-Javadoc)
     *
     * @see ldap.advance.example.UserRepositoryIntf#authenticate(java.lang.String,
     * java.lang.String)
     */
    public boolean authenticate(String base, String userName, String password) {
        log.info("executing {authenticate}");
        return ldapTemplate.authenticate(base, "(uid=" + userName + ")", password);
    }

    /*
     * (non-Javadoc)
     *
     * @see
     * ldap.advance.example.UserRepositoryIntf#updateTelePhone(java.lang.String)
     */
    public User updateTelePhone(String userName, String newNumber) {
        log.info("executing {updateTelePhone}");
        ModificationItem item = new ModificationItem(DirContext.REPLACE_ATTRIBUTE, new BasicAttribute("telephoneNumber", newNumber));
        ldapTemplate.modifyAttributes("uid=" + userName + ",ou=users", new ModificationItem[]{item});
        return getUserDetails(userName);
    }

    /*
     * (non-Javadoc)
     *
     * @see
     * ldap.advance.example.UserRepositoryIntf#createUser(ldap.advance.example.User)
     */
    public boolean createUser(User user) {
        log.info("executing {createUser}");
        Attribute objectClass = new BasicAttribute("objectClass");
        {
            objectClass.add("top");
            objectClass.add("uidObject");
            objectClass.add("person");
            objectClass.add("organizationalPerson");
        }
        Attributes userAttributes = new BasicAttributes();
        userAttributes.put(objectClass);
        userAttributes.put("cn", user.getCn());
        userAttributes.put("sn", user.getSn());
        userAttributes.put("uid", user.getUid());
        userAttributes.put("postalAddress", user.getPostalAddress());
        userAttributes.put("telephoneNumber", user.getTelephoneNumber());
        userAttributes.put("userPassword", user.getUserPassword().getBytes());
        ldapTemplate.bind(bindDN(user.getUid()), null, userAttributes);
        return true;
    }

    /*
     * (non-Javadoc)
     * @see ldap.advance.example.UserRepositoryIntf#remove(java.lang.String)
     */

    public boolean remove(String uid) {
        ldapTemplate.unbind(bindDN(uid));
        return true;
    }

    /**
     * This class is responsible to prepare User object after ldap search.
     *
     * @author Metao
     */
    /*private class UserAttributesMapper implements AttributesMapper<User> {

        public User mapFromAttributes(Attributes attributes) throws NamingException {
            User user;
            if (attributes == null) {
                return null;
            }
            user = new User();
            user.setCn(attributes.get("cn").get().toString());

            if (attributes.get("userPassword") != null) {
                String userPassword = null;
                try {
                    userPassword = new String((byte[]) attributes.get("userPassword").get(), "UTF-8");
                } catch (UnsupportedEncodingException e) {
                    log.error("unable to process", e);
                }
                user.setUserPassword(userPassword);
            }
            if (attributes.get("uid") != null) {
                user.setUid(attributes.get("uid").get().toString());
            }
            if (attributes.get("sn") != null) {
                user.setSn(attributes.get("sn").get().toString());
            }
            if (attributes.get("postalAddress") != null) {
                user.setPostalAddress(attributes.get("postalAddress").get().toString());
            }
            if (attributes.get("telephoneNumber") != null) {
                user.setTelephoneNumber(attributes.get("telephoneNumber").get().toString());
            }
            return user;
        }
    }*/

    /**
     * This class is responsible to print all the content in string format.
     *
     * @author Metao
     */

    /**
     * This class is responsible to print only cn .
     *
     * @author Metao
     */
    /*private class SingleAttributesMapper implements AttributesMapper<String> {

        public String mapFromAttributes(Attributes attrs) throws NamingException {
            Attribute cn = attrs.get("cn");
            return cn.toString();
        }
    }*/
    /*private class MultipleAttributesMapper implements AttributesMapper<String> {

        public String mapFromAttributes(Attributes attrs) throws NamingException {
            NamingEnumeration<? extends Attribute> all = attrs.getAll();
            StringBuffer result = new StringBuffer();
            result.append("\n Result { \n");
            while (all.hasMore()) {
                Attribute id = all.next();
                result.append(" \t |_  #" + id.getID() + "= [ " + id.get() + " ]  \n");
                log.info(id.getID() + "\t | " + id.get());
            }
            result.append("\n } ");
            return result.toString();
        }
    }*/
}