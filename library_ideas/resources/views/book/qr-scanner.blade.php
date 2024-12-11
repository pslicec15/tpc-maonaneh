@extends('layouts.app')

@section('content')
<div class="content-wrapper">
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>QR Book Scanner</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="content">
        <div class="container-fluid">
            <div class="card card-success">
                <div class="card-header">
                    <h3 class="card-title">Scan Book QR Code</h3>
                </div>
                <div class="card-body text-center">
                    <video id="preview" width="100%" style="border: 1px solid #ccc;"></video>
                    <p id="scanResult" class="mt-3 text-success font-weight-bold"></p>
                </div>
                <div class="card-footer text-center">
                    <button class="btn btn-primary" id="startScan">Start Scanning</button>
                </div>
            </div>
        </div>
    </section>
</div>
@endsection

@push('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/instascan/1.0.0/instascan.min.js"></script>
<script>
    document.getElementById('startScan').addEventListener('click', function () {
        let scanner = new Instascan.Scanner({ video: document.getElementById('preview') });
        scanner.addListener('scan', function (content) {
            document.getElementById('scanResult').innerText = `Scanned Content: ${content}`;
            // Example: Redirect to book details
            // window.location.href = `/book/details/${content}`;
        });

        Instascan.Camera.getCameras().then(function (cameras) {
            if (cameras.length > 0) {
                scanner.start(cameras[0]);
            } else {
                alert('No cameras found.');
            }
        }).catch(function (e) {
            console.error(e);
            alert('Camera access is not available.');
        });
    });
</script>
@endpush
