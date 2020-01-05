# spring_board_1

java.sql.SQLException: 부적합한 열 유형: 1111

__Could not set parameters for mapping:__ 

ParameterMapping{property='startDate', mode=IN, javaType=class java.util.Date, jdbcType=null, numericScale=null, resultMapId='null', jdbcTypeName='null', expression='null'}. 
Cause: org.apache.ibatis.type.TypeException: Error setting null for parameter #6 with JdbcType OTHER . 
Try setting a different JdbcType for this parameter or a different jdbcTypeForNull configuration property. 

_**Cause: java.sql.SQLException: 부적합한 열 유형: 1111**_


>studyMapper.xml
<pre><code>
insert into STUDYENROLL (SNO, USERID, USERPASS, EMAIL, CATEGORY, STITLE, STARTDATE, ENDDATE, SDAY, SPLACE, SCONTENT )
values( STUDY_SEQ.NEXTVAL , #{userId}, #{userPass}, #{email}, #{category}, #{stitle}, #{startDate}, #{endDate}, #{sDay}, #{sPlace}, #{scontent})

</code></pre>

>Oracle SQL
<pre><code>
create table STUDYENROLL( 
     SNO  NUMBER  NOT NULL,
     USERID VARCHAR2(20)  NOT NULL,
     USERPASS VARCHAR2(100) NOT NULL 
     EMAIL  VARCHAR2(30),			          
     CATEGORY VARCHAR2(15)  NOT NULL, 
     STITLE VARCHAR2(50)  NOT NULL, 
     STARTDATE  DATE
     ENDDATE  DATE
     SDAY VARCHAR2(25)  NOT NULL, 
     SPLACE VARCHAR2(60)			          
     SCONTENT VARCHAR2(1000)  NOT NULL,
     PRIMARY KEY(SNO)
 );
 
</code></pre>

>StudyEnrollVO.java

<pre><code>  
private int post;
private String roadAddress;
private String jibunAddress;
	
private int sno;
private String userId;
private String userPass;
private String email;
private String category;
private String stitle;
private Date startDate;
private Date endDate;
private String sDay;
private String sPlace;
private String sContent;

</code></pre>
