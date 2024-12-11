@include('partials.header')

<body class="hold-transition sidebar-mini layout-fixed layout-navbar-fixed">
    <div class="wrapper">
        <!-- Navbar -->
        <x-nav />
        <!-- /.navbar -->

        <!-- Main Sidebar Container -->
        <x-sidebar />

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-12">
                            <h1><b>Dashboard</b></h1>
                            
                            <!-- Current Date and Time -->
                            <div class="d-flex justify-content-start align-items-center mt-3">
                                <i class="fas fa-clock fa-2x mr-2"></i> <!-- Clock Icon -->
                                <span id="current-time" class="display-4 font-weight-bold" style="font-size: 24px;">{{ \Carbon\Carbon::now()->format('l, F j, Y H:i:s') }}</span>
                            </div>

                        </div>
                    </div>
                </div><!-- /.container-fluid -->
            </section>
            
            <!-- Main content -->
            <section class="content">
                <!-- Cards displaying count of Books, Students, Borrowers, Instructors -->
                <div class="row mt-3">
                    <!-- Books -->
                    <div class="col-lg-3 col-6">
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{ $totalBooksCount }}</h3>
                                <p>Books</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-book"></i>
                            </div>
                            <a href="/book" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- Students -->
                    <div class="col-lg-3 col-6">
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3>{{ $totalStudentsCount }}</h3>
                                <p>Students</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-graduation-cap"></i>
                            </div>
                            <a href="/student" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- Borrowers -->
                    <div class="col-lg-3 col-6">
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3>{{ $totalUniqueBorrowersCount }}</h3>
                                <p>Borrowers</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-user"></i>
                            </div>
                            <a href="/borrowers-list" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- Instructors -->
                    <div class="col-lg-3 col-6">
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3>{{ $totalInstructorsCount }}</h3>
                                <p>Instructors</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-chalkboard-teacher"></i>
                            </div>
                            <a href="/instructor" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>

                <!-- Charts -->
                <div class="row mt-3">
                    <!-- Most Borrowed Book Chart -->
                    <div class="col-lg-6 col-6">
                        <div class="card w-100">
                            <div class="card-header">
                                <h3 class="card-title">Most Borrowed Book</h3>
                            </div>
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div>
                                        <canvas id="barChart1" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Months with Most Borrowing Activity Chart -->
                    <div class="col-lg-6 col-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Months with Most Borrowing Activity</h3>
                            </div>
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div>
                                        <canvas id="lineChart" style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Students and Instructors Borrowing Activity Charts -->
                <div class="row mt-3">
                    <!-- Students by Course with Most Borrowed Books -->
                    <div class="col-lg-6 col-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Students by Course with Most Borrowed Books</h3>
                            </div>
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div>
                                        <canvas id="barChart2"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Instructors by Department with Most Borrowed Books -->
                    <div class="col-lg-6 col-6">
                        <div class="card">
                            <div class="card-header">
                                <h3 class="card-title">Instructors by Department with Most Borrowed Books</h3>
                            </div>
                            <div class="card-body">
                                <div class="tab-content p-0">
                                    <div>
                                        <canvas id="barChart3"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </section>
            <!-- /.content -->
        </div><!-- /.content-wrapper -->

        <!-- Footer -->
        <x-footer />

    </div><!-- ./wrapper -->
            <script>
                // JavaScript function to update the time dynamically
                            function updateTime() {
                        var currentTime = new Date();
                var hours = currentTime.getHours();
                var minutes = currentTime.getMinutes().toString().padStart(2, '0');
                var seconds = currentTime.getSeconds().toString().padStart(2, '0');
                var day = currentTime.toLocaleString('en-us', { weekday: 'long' });
                var month = currentTime.toLocaleString('en-us', { month: 'long' });
                var date = currentTime.getDate();
                var year = currentTime.getFullYear();
                
                var ampm = hours >= 12 ? 'PM' : 'AM';  // Determine AM or PM
                hours = hours % 12;  // Convert hours to 12-hour format
                hours = hours ? hours : 12; // Handle midnight (0 -> 12)
                
                var timeString = `${day}, ${month} ${date}, ${year} ${hours}:${minutes}:${seconds} ${ampm}`;
                
                document.getElementById("current-time").innerText = timeString;
            }


        setInterval(updateTime, 1000);
        updateTime();  // Initial call to display time immediately
        
                // Data for Line Chart
                var lineChartData = {
                    labels: {!! json_encode($top5MonthActivity->pluck('monthYear')) !!},
                    datasets: [{
                        label: 'Months with Most Borrowing Activity',
                        data: {!! json_encode($top5MonthActivity->pluck('borrowCount')) !!},
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 2,
                        fill: false,
                    }]
                };

                // Render Line Chart
                var lineChart = new Chart(document.getElementById('lineChart').getContext('2d'), {
                    type: 'line',
                    data: lineChartData,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        scales: {
                            xAxes: [{
                                type: 'category',
                                labels: {!! json_encode($top5MonthActivity->pluck('monthYear')) !!},
                            }],
                        },
                    }
                });

                
                // Data for Bar Charts
                var barChartData1 = {
                    labels: {!! json_encode($topBorrowedBooks->pluck('bookTitle')) !!},
                    datasets: [{
                        data: {!! json_encode($topBorrowedBooks->pluck('borrowCount')) !!},
                        backgroundColor: 'rgba(255, 99, 132, 1)',
                        borderColor: 'rgba(255, 99, 132, 1)',
                        borderWidth: 1
                    }]
                };

                var barChartData2 = {
                    labels: {!! json_encode($topFrequentBorrowerCourses->pluck('code')) !!},
                    datasets: [{
                        label: 'Top Frequent Borrower Courses',
                        data: {!! json_encode($topFrequentBorrowerCourses->pluck('studentCount')) !!},
                        backgroundColor: 'rgba(54, 162, 235, 1)',
                        borderColor: 'rgba(54, 162, 235, 1)',
                        borderWidth: 1
                    }]
                };

                var barChartData3 = {
                    labels: {!! json_encode($topFrequentBorrowerDepartments->pluck('code')) !!},
                    datasets: [{
                        label: 'Top Frequent Borrower Departments',
                        data: {!! json_encode($topFrequentBorrowerDepartments->pluck('instructorCount')) !!},
                        backgroundColor: 'rgba(255, 206, 86, 1)',
                        borderColor: 'rgba(255, 206, 86, 1)',
                        borderWidth: 2,
                    }]
                };

                // Render Line Chart
                var lineChart = new Chart(document.getElementById('lineChart').getContext('2d'), {
                    type: 'line',
                    data: lineChartData,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        legend: {
                            display: false, // Hide legend
                        },
                        tooltips: {
                            enabled: true, // Disable tooltips
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    display: false, // Hide vertical grid lines
                                },
                            }],
                            yAxes: [{
                                type: 'logarithmic',
                                gridLines: {
                                    display: true, // Hide horizontal grid lines
                                },
                                ticks: {
                                    display: false, // Hide y-axis ticks
                                },
                            }],
                        },
                    },
                });

                // Render Bar Charts
                var barChart1 = new Chart(document.getElementById('barChart1').getContext('2d'), {
                    type: 'bar',
                    data: barChartData1,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        legend: {
                            display: false, // Hide legend
                        },
                        tooltips: {
                            enabled: true, // Disable tooltips
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    display: false, // Hide vertical grid lines
                                },
                            }],
                            yAxes: [{
                                type: 'logarithmic',
                                gridLines: {
                                    display: false, // Hide horizontal grid lines
                                },
                                ticks: {
                                    display: false, // Hide y-axis ticks
                                },
                            }],
                        },
                    },
                });

                var barChart2 = new Chart(document.getElementById('barChart2').getContext('2d'), {
                    type: 'bar',
                    data: barChartData2,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        legend: {
                            display: false, // Hide legend
                        },
                        tooltips: {
                            enabled: true, // Disable tooltips
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    display: false, // Hide vertical grid lines
                                },
                            }],
                            yAxes: [{
                                type: 'logarithmic',
                                gridLines: {
                                    display: false, // Hide horizontal grid lines
                                },
                                ticks: {
                                    display: false, // Hide y-axis ticks
                                },
                            }],
                        },
                    },
                });

                var barChart3 = new Chart(document.getElementById('barChart3').getContext('2d'), {
                    type: 'bar',
                    data: barChartData3,
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        legend: {
                            display: false, // Hide legend
                        },
                        tooltips: {
                            enabled: true, // Disable tooltips
                        },
                        scales: {
                            xAxes: [{
                                gridLines: {
                                    display: false, // Hide vertical grid lines
                                },
                            }],
                            yAxes: [{
                                type: 'logarithmic',
                                gridLines: {
                                    display: false, // Hide horizontal grid lines
                                },
                                ticks: {
                                    display: false, // Hide y-axis ticks
                                },
                            }],
                        },
                    },
                });
            </script>
            @include('partials.footer')
