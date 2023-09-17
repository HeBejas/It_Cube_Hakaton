<main>
    <div class="hero">
        <div class="hero_title">
            <div>«ИЖГОУ»</div>
            <div>ЛУЧШИЕ ТУРЫ УДМУРТИИ</div>
        </div>
    </div>
    <div class="popular_tours_title">Популярные туры</div>
    <div class="container">
        <div class="popular_tours">
            <div class="container">
                <div class="popular_tours_list">
                    <?php
                        $query = "SELECT tour.id_tour, tour.name_tour, tour.price_tour, typetour.name_typetour, tour.duration_tour, tour.desc_tour, tour.img_tour 
                            FROM `tour`
                            LEFT JOIN `typetour` ON tour.id_typetour=typetour.id_typetour
                            WHERE 1
                            LIMIT 1";
                        include ("connect.php");
                        $link = mysqli_connect($host, $user, $password, $db_name); 
                        $result = mysqli_query($link, $query);
                        if($result == false) {
                            die("Произошла ошибка при выполнении запроса"); 
                        }
                        else {
                            for ($data = []; $row = mysqli_fetch_assoc($result); $data[] = $row);
                            $compare = "";
                            foreach ($data as $row) {
                                echo 
                                    "
                                    <div class='tour most_popular_tour' style='background: url($row[img_tour]);' onclick='transition($row[id_tour])'>
                                        <div class='tour_place'>$row[name_typetour]</div>
                                        <div class='tour_info'>
                                            <div class='flex jc_space-between'>
                                                <div class='tour_info_name'>$row[name_tour]</div>
                                                <div>
                                                    <div class='tour_info_time'>$row[duration_tour]</div>
                                                    <div class='tour_info_price'>$row[price_tour]₽</div>
                                                </div>
                                            </div>
                                            <div class='tour_desc'>$row[desc_tour]</div>
                                        </div>
                                    </div>
                                    ";
                            }
                        }
                    ?>
                    <div class="tour" style="background: url(media/images/natsionalnyy-park.png);">
                        <div class="tour_place">Ижевск</div>
                        <div class="tour_info">
                            <div class="flex jc_space-between">
                                <div class="tour_info_name">Зуевы Ключи</div>
                                <div>
                                    <div class="tour_info_time">12 часов</div>
                                    <div class="tour_info_price">2900₽</div>
                                </div>
                            </div>
                            <div class="tour_desc">Одно из красивейших мест Удмуртии находится в Каракулинском района. Его особенностью является пейзаж в виде просторов Камы.</div>
                        </div>
                    </div>
                    <div class="tour" style="background: url(media/images/natsionalnyy-park.png);">
                        <div class="tour_place">Ижевск</div>
                        <div class="tour_info">
                            <div class="flex jc_space-between">
                                <div class="tour_info_name">Зуевы Ключи</div>
                                <div>
                                    <div class="tour_info_time">12 часов</div>
                                    <div class="tour_info_price">2900₽</div>
                                </div>
                            </div>
                            <div class="tour_desc">Одно из красивейших мест Удмуртии находится в Каракулинском района. Его особенностью является пейзаж в виде просторов Камы.</div>
                        </div>
                    </div>
                    <div class="all_tours">
                        <a class="btn_all_tours" href="tours.php">Все Туры</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<script>
    document.getElementById("home").classList.add("btn_header_active");
</script>