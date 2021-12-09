

@foreach ($data as $product)
<link rel="stylesheet" type="text/css" href="css/strap-dashboard.css">
<div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img src="/image/{{ $product->image }}" alt="Admin" class="p-1 bg-primary" width="300">
								<div class="mt-3">
									<h4>{{ $product->fullname }}</h4>
									<p class="text-secondary mb-1">{{ $product->area }}</p>
									<p class="text-muted font-size-sm">{{ $product->instansi }}</p>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div class="card">
						<div class="card-body">
                        <h5 align="center">Profile Information</h5><br>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Full Name</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="{{ $product->fullname }}" readonly>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">RFID Number</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="{{ $product->name }}" readonly>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Phone</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="(239) 816-9029">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Area</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="{{ $product->area }}" readonly>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Instansi</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="{{ $product->instansi }}" readonly>
								</div>
							</div>
                            <div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">ID Number</h6>
								</div>
								<div class="col-sm-9 text-secondary">
									<input type="text" class="form-control" value="{{ $product->no_id }}" readonly>
								</div>
							</div>
						</div>
					</div>
                    
					<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div class="card-body">
									<h5 class="d-flex align-items-center mb-3">Project Status</h5>
									<p>Attendance : 80%</p>
									<div class="progress mb-3" style="height: 5px">
										<div class="progress-bar bg-danger" role="progressbar" style="width: 40%" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
@endforeach
