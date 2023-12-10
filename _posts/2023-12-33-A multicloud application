


AWS

Install the aws cli if you dont have it

https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip ...
cd aws
sudo ./install



 Login to the console

 https://aws.amazon.com/console/

Lets pick an AMI to use

samsonl@samsonl:~/git/multi-cloud-webapp/scripts$ aws ec2 describe-images  --query "sort_by(Images[?starts_with(Name,'debian-12-amd64')],&CreationDate)[*].{CreationDate:CreationDate,ImageId:ImageId,Name:Name}" --output table --color off 
-----------------------------------------------------------------------------------------------------------
|                                             DescribeImages                                              |
+---------------------------+------------------------+----------------------------------------------------+
|       CreationDate        |        ImageId         |                       Name                         |
+---------------------------+------------------------+----------------------------------------------------+
|  2023-06-01T09:16:20.000Z |  ami-058cbc5fad0bdfe0e |  debian-12-amd64-20230531-1397                     |
|  2023-06-01T18:51:41.000Z |  ami-01e15f1df0bd37e28 |  debian-12-amd64-20230531-1397-prod-s2fy2g55okxhk  |
|  2023-06-12T16:42:42.000Z |  ami-0af9f2b7d33050bbc |  debian-12-amd64-20230612-1409                     |
|  2023-06-13T04:32:39.000Z |  ami-09c162eee42f31a8d |  debian-12-amd64-20230612-1409-prod-s2fy2g55okxhk  |
|  2023-07-11T17:11:36.000Z |  ami-00f3471feb1f3897e |  debian-12-amd64-20230711-1438                     |
|  2023-07-11T19:27:53.000Z |  ami-0a1f47afe76120678 |  debian-12-amd64-20230711-1438-prod-s2fy2g55okxhk  |
|  2023-07-24T09:12:12.000Z |  ami-0ef2a8b923aaa00b7 |  debian-12-amd64-20230723-1450                     |
|  2023-07-26T02:49:15.000Z |  ami-016172f58202b521d |  debian-12-amd64-20230723-1450-prod-s2fy2g55okxhk  |
|  2023-08-02T13:57:32.000Z |  ami-08ac0fc0cba8deca9 |  debian-12-amd64-20230802-1460                     |
|  2023-09-10T15:45:07.000Z |  ami-0572774194d83038a |  debian-12-amd64-20230910-1499                     |
|  2023-09-16T18:23:54.000Z |  ami-0fa8d423adda3752f |  debian-12-amd64-20230910-1499-prod-s2fy2g55okxhk  |
|  2023-10-04T15:00:49.000Z |  ami-0529f18892029710d |  debian-12-amd64-20231004-1523                     |
|  2023-10-04T16:19:18.000Z |  ami-0ec1916e86d35e9a4 |  debian-12-amd64-20231004-1523-prod-s2fy2g55okxhk  |
|  2023-10-13T16:29:17.000Z |  ami-08e168f4c7bff7921 |  debian-12-amd64-20231013-1532                     |
|  2023-10-13T19:14:46.000Z |  ami-0787ae6e6644a61e3 |  debian-12-amd64-20231013-1532-prod-s2fy2g55okxhk  |
|  2023-11-10T05:29:43.000Z |  ami-0c13d3f312c36bdff |  debian-12-amd64-daily-20231110-1560               |
|  2023-11-11T05:22:45.000Z |  ami-0604e8fe582f3473b |  debian-12-amd64-daily-20231111-1561               |
|  2023-11-12T05:24:20.000Z |  ami-01c3f8e5f063bf05d |  debian-12-amd64-daily-20231112-1562               |
|  2023-11-14T05:24:18.000Z |  ami-039ee0286c9daad6f |  debian-12-amd64-daily-20231114-1564               |
|  2023-11-15T05:23:15.000Z |  ami-012f7d5631192c33d |  debian-12-amd64-daily-20231115-1565               |
|  2023-11-16T05:27:07.000Z |  ami-012f010435db629d2 |  debian-12-amd64-daily-20231116-1566               |
|  2023-11-17T05:25:30.000Z |  ami-0eff749ff8452371c |  debian-12-amd64-daily-20231117-1567               |
|  2023-11-18T05:26:35.000Z |  ami-0fb7bc3526397e1d4 |  debian-12-amd64-daily-20231118-1568               |
|  2023-11-19T05:34:38.000Z |  ami-0c9ba960c39e5dfa4 |  debian-12-amd64-daily-20231119-1569               |
|  2023-11-20T05:34:04.000Z |  ami-03429eb2352e9498b |  debian-12-amd64-daily-20231120-1570               |
|  2023-11-21T05:49:35.000Z |  ami-07a79783d51cb46d5 |  debian-12-amd64-daily-20231121-1571               |
|  2023-11-22T05:26:14.000Z |  ami-061083941f3e7e95d |  debian-12-amd64-daily-20231122-1572               |
|  2023-11-23T05:35:21.000Z |  ami-086a34f533066aac9 |  debian-12-amd64-daily-20231123-1573               |
|  2023-11-24T05:26:26.000Z |  ami-0bf6c585f397e26a4 |  debian-12-amd64-daily-20231124-1574               |
|  2023-11-25T05:26:36.000Z |  ami-0d93cd9899ed78f1d |  debian-12-amd64-daily-20231125-1575               |
|  2023-11-26T05:26:29.000Z |  ami-037973143722c1cdc |  debian-12-amd64-daily-20231126-1576               |
|  2023-11-27T05:34:37.000Z |  ami-08c4bd49fa266a684 |  debian-12-amd64-daily-20231127-1577               |
|  2023-11-28T05:22:22.000Z |  ami-04132e023c60de313 |  debian-12-amd64-daily-20231128-1578               |
|  2023-11-29T05:27:01.000Z |  ami-07adf7218dd2dd4a1 |  debian-12-amd64-daily-20231129-1579               |
|  2023-12-01T05:27:29.000Z |  ami-002730089dfffa98d |  debian-12-amd64-daily-20231201-1581               |
|  2023-12-02T05:25:44.000Z |  ami-0ebe09bae7c9b0771 |  debian-12-amd64-daily-20231202-1582               |
|  2023-12-03T05:27:00.000Z |  ami-0a68a62e3e9875eaf |  debian-12-amd64-daily-20231203-1583               |
|  2023-12-04T05:37:11.000Z |  ami-028eaa63d4097e159 |  debian-12-amd64-daily-20231204-1584               |
|  2023-12-05T05:27:10.000Z |  ami-0f0fe1347fd75e798 |  debian-12-amd64-daily-20231205-1585               |
|  2023-12-06T05:26:35.000Z |  ami-0acea0e6081509f21 |  debian-12-amd64-daily-20231206-1586               |
|  2023-12-07T05:26:33.000Z |  ami-04731b203eb2f2927 |  debian-12-amd64-daily-20231207-1587               |
|  2023-12-08T05:28:09.000Z |  ami-0ac51c5188269a883 |  debian-12-amd64-daily-20231208-1588               |
|  2023-12-09T05:26:59.000Z |  ami-0d2e150968bcdc4c1 |  debian-12-amd64-daily-20231209-1589               |
+---------------------------+------------------------+----------------------------------------------------+

 
