# Lecture Notes
## AWS Global Infrastructure
+ 16 Regions in the world and 44 availibility zone (as of late 2018)  
+ **Region** - a geographical area, eac region consists of 2 or more availibity zone (AZ)  
    + for example, US East( Northern Virginia) Region has 6 AZ  
+ AWS Edge Network location:  
    + endpoints for AWS which are used for caching  
    + usu. consists of CloudFront, AWS own CDN  
    + there are more edge locations than regions  

#### Exam Tips
+ A region is a physcial location in the world which consists of 2+ AZs  
+ AWS AZ is one or more discrete data center, each with redundant power, networking, and connectivity, housed in separate facilities  
+ edge locations are endpoints for AWs used for caching content, typical for CloudFront for Amazon's CDN  

## Route 53  
1. DNS 101  
    + domain names to Internet Protocol (IP) address    
    + IPv4 or IPv6, similar to phonebook analogy  
    + Top level domain (TLD) are .com, .edu, .gov for example  
    + TLD is controlled by IANA, the Internet Assigned Numbers Authority, in the root zone database  
    + domain registars are authority that can assign domain names so that there is no duplicates    
    + start of authority record (SOA) stores info about the name of server that supplies the data for the zone, which are:
            + the admin of the zone  
            + current version of the file  
            + time to live (TTL) in seconds on resource records           
    +  name record (NS)
    +  authority (A) address  
    +  canonical name (CName) - used to resolve one domain to another, maps one domain to another  
    +  **alias record** - this is unique to AWS Route53, which map resources like ELB, naked domain names to point to S# bucket or etc.  
            + CNAME cannot be used for naked domain names, example: http://acloud.guru  

#### Exam Tips
    + Elastic Load Balancers do not have predefined IPv4 addresses, you resolve to them using DNS name
  
    
