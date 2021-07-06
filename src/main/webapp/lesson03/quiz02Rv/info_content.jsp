<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
 <%
//아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://scontent-ssn1-1.xx.fbcdn.net/v/t1.6435-9/165180104_277246477102900_6106347261862438192_n.jpg?_nc_cat=102&ccb=1-3&_nc_sid=730e14&_nc_ohc=JAhdHZFEc34AX8Ap46p&_nc_ht=scontent-ssn1-1.xx&oh=0ae177c1ec132f1d577ad7d2b293d798&oe=60E832F6");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 253);
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "http://mnews.imaeil.com/inc/photos/2018/10/11/2018101109060899920_l.jpg");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://cdnimg.melon.co.kr/cm/album/images/026/46/282/2646282_500.jpg");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);
%>


<%

	//상세 정보를 보여줄 target 세팅
	Map<String,Object> target=null;
	
	//1.목록에서 클릭 한 경우 (id값)
	if(request.getParameter("id")!=null){
		Integer paramId = Integer.parseInt(request.getParameter("id"));
		for(Map<String,Object> item : musicList){
			if((int)item.get("id")==paramId){
				target=item;
			}
		}
	}
	//2.검색한 경우 (search값)
	if(request.getParameter("search")!=null){
		String paramTitle=request.getParameter("search");
		for(Map<String,Object> item : musicList){
			String title=(String)item.get("title");
			if(title.equals(paramTitle)){
				target=item;
			}
		}
	}

%>


<section class="contents">
	<h4 class="mt-4">곡 정보</h4>
	<div class="singer-info d-flex mt-4 border border-4 border-success p-3 align-items-center">
		<div class="music-photo mr-4">
			<img src="<%=target.get("thumbnail")%>" width="150px" alt="가수이미지"/>
		</div>
		<div>
			<h1 class="display-5"><%=target.get("title")%></h1> 
			<h5 class="musician-name font-weight-bold"><%=target.get("singer")%></h5>
			<table>
				<tr>
					<td><span class="text-secondary mr-4">앨범</span></td>
					<td><sapn class=" ml-4 text-secondary" ><%=target.get("album")%></sapn></td>
				</tr>
				<tr>
					<td><span class="text-secondary mr-3">재생시간</span></td>
					<td><span class=" ml-4 text-secondary font-weight-bold" ><%=(int)target.get("time")/60%>&nbsp;:&nbsp;<%=(int)target.get("time")%60%></span></td>
					</tr>
				<tr>
					<td><span class="text-secondary mr-4">작곡가</span></td>
					<td><span class=" ml-4 text-secondary" ><%=target.get("composer")%></span></td>
				</tr>
				<tr>
					<td><span class="text-secondary mr-4">작사가</span></td>
					<td><span class=" ml-4 text-secondary" ><%=target.get("lyricist")%></span></td>
				</tr>
			</table>
		</div>
	</div>
	<h4 class="mt-4">가사</h4>
	<hr>
	<div>가사 정보 없음</div>
</section>