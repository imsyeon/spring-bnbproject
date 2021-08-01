<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content= "width=device-width, initial-scale=1.0">
    <title>숙소, 체험, 장소를 모두 한 곳에서 - 에어비앤비</title>
    <link rel="shortcut icon" sizes="76x76" type="image/x-icon" href="https://a0.muscache.com/airbnb/static/logotype_favicon-21cc8e6c6a2cca43f061d2dcabdf6e58.ico">
    <link rel="stylesheet" href="resources/css/style.css">
</head>
<body>
    <header>
        <nav>
            <div class="logo">
                <svg width="30" height="32" fill="currentcolor" style="display: inline-block;"><path d="M29.24 22.68c-.16-.39-.31-.8-.47-1.15l-.74-1.67-.03-.03c-2.2-4.8-4.55-9.68-7.04-14.48l-.1-.2c-.25-.47-.5-.99-.76-1.47-.32-.57-.63-1.18-1.14-1.76a5.3 5.3 0 00-8.2 0c-.47.58-.82 1.19-1.14 1.76-.25.52-.5 1.03-.76 1.5l-.1.2c-2.45 4.8-4.84 9.68-7.04 14.48l-.06.06c-.22.52-.48 1.06-.73 1.64-.16.35-.32.73-.48 1.15a6.8 6.8 0 007.2 9.23 8.38 8.38 0 003.18-1.1c1.3-.73 2.55-1.79 3.95-3.32 1.4 1.53 2.68 2.59 3.95 3.33A8.38 8.38 0 0022.75 32a6.79 6.79 0 006.75-5.83 5.94 5.94 0 00-.26-3.5zm-14.36 1.66c-1.72-2.2-2.84-4.22-3.22-5.95a5.2 5.2 0 01-.1-1.96c.07-.51.26-.96.52-1.34.6-.87 1.65-1.41 2.8-1.41a3.3 3.3 0 012.8 1.4c.26.4.45.84.51 1.35.1.58.06 1.25-.1 1.96-.38 1.7-1.5 3.74-3.21 5.95zm12.74 1.48a4.76 4.76 0 01-2.9 3.75c-.76.32-1.6.41-2.42.32-.8-.1-1.6-.36-2.42-.84a15.64 15.64 0 01-3.63-3.1c2.1-2.6 3.37-4.97 3.85-7.08.23-1 .26-1.9.16-2.73a5.53 5.53 0 00-.86-2.2 5.36 5.36 0 00-4.49-2.28c-1.85 0-3.5.86-4.5 2.27a5.18 5.18 0 00-.85 2.21c-.13.84-.1 1.77.16 2.73.48 2.11 1.78 4.51 3.85 7.1a14.33 14.33 0 01-3.63 3.12c-.83.48-1.62.73-2.42.83a4.76 4.76 0 01-5.32-4.07c-.1-.8-.03-1.6.29-2.5.1-.32.25-.64.41-1.02.22-.52.48-1.06.73-1.6l.04-.07c2.16-4.77 4.52-9.64 6.97-14.41l.1-.2c.25-.48.5-.99.76-1.47.26-.51.54-1 .9-1.4a3.32 3.32 0 015.09 0c.35.4.64.89.9 1.4.25.48.5 1 .76 1.47l.1.2c2.44 4.77 4.8 9.64 7 14.41l.03.03c.26.52.48 1.1.73 1.6.16.39.32.7.42 1.03.19.9.29 1.7.19 2.5z"></path></svg>
            </div>
            <div class="menu">
                <ul>
                    <li><a href="insertBoard2.jsp">호스트가 되어보세요</a></li>
                    <li><a href="getBoardList.do">집 구경하기</a></li>
            
                    <li><a href="loginUser.jsp">로그인</a></li>                   
                    <li><a href="logout.do">로그아웃</a></li>
                    
                </ul>
            </div>
        </nav>
        
        <section>

            <div class="search__box">
                <div class="search__title">특색있는 숙소와 즐길<br/> 거리를 예약하세요.</div>
            
            <table>
                <tr>
                    <td colspan="2" class="search__sub__title">목적지</td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <input class="search__input" type="text" placeholder="  모든 위치"/>
                    </td>
                </tr>
                <tr>
                    <td class="search__sub__title">체크인</td>
                    <td class="search__sub__title">체크아웃</td>
                </tr>
                <tr>
                    <td><input class="search__input" type="date"></td>
                    <td><input class="search__input" type="date"></td>
                </tr>
                <tr>
                <td colspan="2" class="search__sub__title">인원</td>
            </tr>
            <tr>
                <td colspan="2">
                    <select class="search__input">
                        <option>1</option>
                        <option>2</option>
                    </select>
                </td>
            </tr>
            </table>
            <div class="search__button">
                <button>검색</button>
            </div>
        </div>
        </section>
    </header>
     <main>
        <section>
            <div class="sec__title">에어비앤비 둘러보기</div>
            <div class="card__box">
                <div class="card">
                  <div class="card__img"></div>
                  <datagrid class="card__content">숙소 및 부티크 호텔</datagrid>  
                </div>

                    <div class="card">
                      <div class="card__img"></div>
                      <datagrid class="card__content">트립</datagrid>  
                    </div>

                    
                        <div class="card">
                          <div class="card__img"></div>
                          <datagrid class="card__content">어드벤처</datagrid>  
                        </div>

                        
                            <div class="card">
                              <div class="card__img"></div>
                              <datagrid class="card__content">레스토랑</datagrid>  
                  </div>
            </div>
        </section>
        <section>
            <div class="ad1"></div>
        </section>
        <section>
            <div class="sec__title">추천 여행지</div>
            <div class="choo__box">
                <div class="choo_img"></div>
                <div class="choo_img"></div>
                <div class="choo_img"></div>
                <div class="choo_img"></div>
                <div class="choo_img"></div>
            </div>

        </section>
        <section>
            <div class="sec__title">에어비앤비 플러스를 만나보세요!</div>
            <div class="sec__content">퀄리티와 인테리어 디자인이 검증된 숙소 컬렉션</div>
            <div class="ad2"></div>
        </section>
        <section>
            <div class="sec__title">전세계 숙소</div>
            <div class="home__box">
                
                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

                <div class="home">
                    <div class="home__img"></div>
                    <div class="home__info">
                        <div class="info1">오두막 ' BALIAN BEACH, BALI</div>
                        <div class="info2">BALIAN TREEHOUSE w beautiful pool</div>
                        <div class="info3">
                            <span class="star">★★★★</span>
                            <span class="count">185</span>
                            <span class="type">슈퍼호스트</span>
                        </div>
                    </div>
                </div>

            </div>


        </section>
    </main>
</body>
</html>