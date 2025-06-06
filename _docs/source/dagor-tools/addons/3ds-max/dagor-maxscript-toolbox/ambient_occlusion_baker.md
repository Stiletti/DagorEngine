# Dagor Ambient Occlusion Baker

## Installation

[Install the script](installation.md) following the provided instructions.

```{important}
This script requires 3ds Max 2018 or newer version to run.
```

## Accessing the Ambient Occlusion Baker

1. Navigate to **Gaijin Tools > Ambient Occlusion Baker**. This will open the
   main window of the **Dagor AO Baker**.

2. To verify the version {bdg-dark-line}`3` of the script, go to **Gaijin
   Tools** {bdg-dark-line}`1` **> About** {bdg-dark-line}`2`. The **About**
   window will display the current version. It's important to check this
   regularly to ensure your script is up to date.

   <img src="_images/ao_baker_01.png" alt="Accessing the Ambient Occlusion Baker" align="center" width="50em">

```{note}
Make sure that the plugin version is at least `1.4`.
```

## Using the Ambient Occlusion Baker

1. Open the tool panel by navigating to **Gaijin Tools > Ambient Occlusion
   Baker**.

   <img src="_images/ao_baker_02.png" alt="Using the Ambient Occlusion Baker" align="center" width="50em">

2. Click the **Bake Selected Object** {bdg-dark-line}`1` button to generate
   Ambient Occlusion (AO) for the selected object in the **Viewport**. Note that
   AO can only be baked for one object at a time.

3. The tool provides several options:
   - **AO Tint Color:** chooses the color for the AO backlight.
   - **AO Ambient Color:** selects the color for the minimum lighting of the AO.
   - **Display AO on Viewport:** toggles the display of AO in the viewport
     (enabled by default).
   - **Transfer AO to Map Channel:** chooses which channel the AO results will
     be placed in (specific to Dagor Engine). By default, the AO is placed in
     channel 8.
   - **Use Beautifier(experemental):** allows to change the nature of AO
     generation. It is a combination of post-generation and overlay lighting. It
     gives a more transparent and lighter result.
   - **Enable Gradient:** adds a gradient to the lighting from the base of the
     object to its top. Works well with bushes or small objects. The bottom will
     be shaded which looks nice as a result.
   - **Gradient Blend Percentages:** percentage value of gradient blending with
     the base lighting.
   - **Gradient Blend Type:** blending type. Determines how the AO and gradient
     base lighting will be blended.
   - **Visit to Learning Web Site:** provides access to this article.
   - **Contact with Developer:** provides access the developer's web page.

4. To test the AO Baker, load the following test scene:
   {download}`tree_AO_test_2021.max<_examples/tree_AO_test_2021.zip>`.

5. Open the scene and select the object `tree_vitellaria_wide_c.lod01`.

6. For the test, configure the colors as shown below:

   <img src="_images/ao_baker_03.png" alt="Using the Ambient Occlusion Baker" align="center">

7. Leave all other settings at their default values. Click **Bake Selected
   Object** and wait for the progress bar indicating scene lighting to complete.
   The result should appear as follows:

   <img src="_images/ao_baker_04.png" alt="Using the Ambient Occlusion Baker" align="center" width="50em">

8. To view the results, right-click on the **Viewport** and select the
   appropriate display option:

   <img src="_images/ao_baker_05.png" alt="Using the Ambient Occlusion Baker" align="center">

9. Then, change the selection from **Vertex Color** to **Map Channel Color** as
   shown below:

   <img src="_images/ao_baker_06.png" alt="Using the Ambient Occlusion Baker" align="center">

10. The AO should now be displayed correctly:

   <img src="_images/ao_baker_07.png" alt="Using the Ambient Occlusion Baker" align="center" width="50em">


```{important}
**Supported Model Types:** the script works correctly with **Edit Poly**, **Edit
Mesh**, and **GrowFX** model types. Other model types are not supported, and
using modifiers on the source model may cause errors when generating LODs (level
of detail) or collisions.
```

