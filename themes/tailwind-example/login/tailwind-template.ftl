<#macro loginLayout>
<!DOCTYPE html>
<html class="h-full bg-gray-50">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="robots" content="noindex, nofollow">
		<#if properties.meta?has_content>
			<#list properties.meta?split(' ') as meta>
				<meta name="${meta?split('==')[0]}" content="${meta?split('==')[1]}"/>
			</#list>
		</#if>
		<title>${msg("loginTitle",(realm.displayName!''))}</title>
		<link rel="icon" href="${url.resourcesPath}/img/favicon.ico" />

		<link rel="stylesheet" href="${url.resourcesPath}/css/styles.css" />
	</head>
	<body class="h-full flex flex-col">
		<div class="h-full flex flex-col justify-center py-12 sm:px-6 lg:px-8">
			<div class="sm:mx-auto sm:w-full sm:max-w-md">
				<img class="mx-auto h-12 w-auto" src="${url.resourcesPath}/img/logo.svg" alt="" />
				<p class="mt-2 text-paragraph tracking-paragraph text-grey">
					<#nested "description">
				</p>
			</div>

			<div class="mt-8 sm:mx-auto sm:w-full sm:max-w-md">
				<div class="">
					<#nested "main">
				</div>
			</div>
		</div>
		
	</body>
</html>
</#macro>
